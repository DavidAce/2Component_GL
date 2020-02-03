//
// Created by ilaria on 2019-11-16.
//

#include "measures.h"

void energy(struct Measures &mis, struct H_parameters &Hp, double my_beta, struct Node* Site){

    unsigned int i, ix, iy, iz, alpha, beta, vec, vec2;
    double h_Potential=0., h_Kinetic=0., h_Josephson=0., h_B=0., h_tot=0.;
    double F_A=0;
    double h2=(Hp.h*Hp.h);
    double h3=(Hp.h*Hp.h*Hp.h);

    for(ix=0; ix<Lx; ix++){
        for(iy=0; iy<Ly; iy++){
            for(iz=0; iz<Lz; iz++){
                for(alpha=0; alpha<NC; alpha++) {
                    i = ix + Lx * (iy + iz * Ly);
                    //Potential= (3/h²)*|Psi_{alpha}(r)|² + |Psi_{alpha}(r)|⁶
                    h_Potential += (O2norm2(Site[i].Psi[alpha]) *
                                    ((3. / h2) + O2norm2(Site[i].Psi[alpha]) * O2norm2(Site[i].Psi[alpha])));
                    //Kinetic= -(1/h²)*\sum_k=1,2,3 |Psi_{alpha}(r)||Psi_{alpha}(r+k)|* cos( theta_{alpha}(r+k) - theta_{alpha}(r) +h*e*A_k(r))
                    for (vec = 0; vec < 3; vec++) {
                        h_Kinetic -= (1. / h2) * (Site[i].Psi[alpha].r * Site[nn(i, vec, 1)].Psi[alpha].r) *
                                     cos(Site[nn(i, vec, 1)].Psi[alpha].t - Site[i].Psi[alpha].t +
                                         (Hp.h * Hp.e * Site[i].A[vec]));
                    }
                    for(beta=alpha+1; beta<NC; beta++ ){
                        //Biquadratic Josephson= \sum_beta!=alpha |Psi_{alpha}(r)|²|Psi_{beta}(r)|²* cos(2(theta_{alpha}(r) - theta_{beta}(r)))
                        h_Josephson+=(O2norm2(Site[i].Psi[alpha])*O2norm2(Site[i].Psi[beta])*cos(Site[i].Psi[alpha].t - Site[i].Psi[beta].t));
                    }
                }
                for(vec=0; vec<3; vec++){
                    for (vec2 = vec+1; vec2 < 3; vec2++) {
                            //F_{vec1,vec2}= A_vec1(r_i) + A_vec2(ri+vec1) - A_vec1(r_i+vec2) - A_vec2(ri)
                            F_A=(Site[i].A[vec] + Site[nn(i, vec, 1)].A[vec2] - Site[nn(i, vec2, 1)].A[vec] - Site[i].A[vec2]);
                            h_B+=((0.5/h2)*(F_A*F_A));
                    }
                }
            }
        }
    }

    //to compute the heat capacity it is important to consider the total physical energy which is h_tot*h³
    mis.E_kin=(double)h3*h_Kinetic;
    mis.E_pot=(double)h3*h_Potential;
    mis.E_Josephson=(double)h3*h_Josephson;
    mis.E_B= (double)h3*h_B;
    h_tot= h_Potential + h_Kinetic +  h_Josephson +h_B;
    mis.E=(double)h_tot*h3;
}

void dual_stiffness(struct Measures &mis, struct H_parameters &Hp, struct Node* Site){

    double qx_min=C_TWO_PI/(Lx);
    double invNorm= 1./((C_TWO_PI)*(C_TWO_PI)*N);
    unsigned int i, ix, iy, iz;
    double Re_rhoz=0.;
    double Im_rhoz=0.;
    double Dx_Ay, Dy_Ax;

    for(ix=0; ix<Lx;ix++){
        for(iy=0; iy<Ly;iy++){
            for(iz=0; iz<Lz;iz++){
                i=ix +Lx*(iy+Ly*iz);
                Dx_Ay=(Site[nn(i, 0, 1)].A[1]- Site[i].A[1])/Hp.h;
                Dy_Ax=(Site[nn(i, 1, 1)].A[0]- Site[i].A[0])/Hp.h;

                Re_rhoz+=(cos((double)qx_min*ix)*(Dx_Ay -Dy_Ax));
                Im_rhoz+=(sin((double)qx_min*ix)*(Dx_Ay -Dy_Ax));
            }
        }
    }
    mis.d_rhoz=invNorm*((Re_rhoz*Re_rhoz) +(Im_rhoz*Im_rhoz));
}

void magnetization(struct Measures &mis, struct Node* Site){
    //The Ising parameter m(x,y)=+/-1 indicates the chirality of the three phases. If the phases are ordered as: phi_1, phi_2, phi_3 then m=1; otherwise if the order is phi_1, phi_3, phi_2 then m=-1.
    unsigned ix, iy, iz, i;
    double phi_shifted;

    for(ix=0; ix<Lx;ix++) {
        for (iy = 0; iy < Ly; iy++) {
            for (iz = 0; iz < Lx; iz++) {
                i=ix +Lx*(iy+Ly*iz);
                    phi_shifted=Site[i].Psi[1].t - Site[i].Psi[0].t;
                    while(phi_shifted >= C_TWO_PI){
                        phi_shifted-= C_TWO_PI;}
                    while(phi_shifted< 0){
                        phi_shifted+=C_TWO_PI;}
                if(phi_shifted< C_PI){
                    mis.m+=1;
                }else if(phi_shifted==C_PI){
		            mis.m+=0;
		        }else if(phi_shifted >C_PI){
                    mis.m+=(-1);
                }
            }
        }
    }
    mis.m=mis.m/N;
}

void density_psi(struct Measures &mis, struct Node* Site){

    unsigned ix, iy, iz, alpha;

    for(ix=0; ix<Lx;ix++) {
        for (iy = 0; iy < Ly; iy++) {
            for (iz = 0; iz < Lx; iz++) {
                for (alpha = 0; alpha < NC; alpha++) {
                    mis.density_psi[alpha]+=(Site[ix+Lx*(iy +Ly*iz)].Psi[alpha].r*Site[ix+Lx*(iy +Ly*iz)].Psi[alpha].r);
                }
            }
        }
    }

    for (alpha = 0; alpha < NC; alpha++) {
        mis.density_psi[alpha]/=N;
    }

}

void save_lattice(struct Node* Site, const fs::path & directory_write, std::string configuration){

    std::string sPsi;
    std::string sA;
    sPsi= std::string("Psi_")+ configuration + std::string(".txt");
    sA= std::string("A_")+ configuration + std::string(".txt");
    fs::path psi_init_file = directory_write / sPsi;
    fs::path a_init_file = directory_write / sA;

    FILE *fPsi= nullptr;
    FILE *fA= nullptr;
    unsigned int i=0;

    if((fPsi=fopen(psi_init_file.c_str(), "w"))) {
        for (i = 0; i < N; i++) {
            fwrite(Site[i].Psi, sizeof(struct O2), NC, fPsi);
        }
        fclose(fPsi);
    }

    if((fA=fopen(a_init_file.c_str(), "w"))) {
        for (i = 0; i < N; i++) {
            fwrite(Site[i].A, sizeof(struct O2), 3, fA);
        }
        fclose(fA);
    }

}

void measures_init(struct Measures &mis){
    //Initialization
    mis.d_rhoz=0.;
    mis.m=0.;
    mis.E=0.;
    mis.E_pot=0.;
    mis.E_kin=0.;
    mis.E_Josephson=0.;
    mis.E_B=0.;
    mis.density_psi=(double *) calloc(NC, sizeof(double));
}

void measures_reset(struct Measures &mis){
    //Initialization
    mis.d_rhoz=(double)0.0;
    mis.m=(double)0.0;
    mis.E=(double)0.0;
    mis.E_pot=(double)0.0;
    mis.E_kin=(double)0.0;
    mis.E_Josephson=(double)0.0;
    mis.E_B=(double)0.0;
    memset(mis.density_psi, 0, NC*sizeof(double));
}

