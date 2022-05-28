# insertions
use exo_bdd;
insert into chaine_de_prod (nom_chaine) values ("LA TURBO CHAINE");
insert into chaine_de_prod (nom_chaine) values ("CHAINE 2");
insert into entree_de_chaine (nom_chainestart) values ("L'ENTRÉE DE LA TURBO CHAINE"); 
insert into entree_de_chaine (nom_chainestart) values ("ENTREE2"); 
insert into entree_de_chaine (nom_chainestart) values ("ENTREE3"); 
insert into sortie_de_chaine(nom_chainend, dureeDeConserv_chainend) values ("SORTIE DE LA TURBO CHAINE",1111); 
insert into sortie_de_chaine(nom_chainend, dureeDeConserv_chainend) values ("SORTIE2",2222); 
insert into pannes(duree_panne) values (2222); 
insert into pannes(duree_panne) values (3333); 
insert into moyen_rep(nom_moyen_rep) values ("TAPER DESSUS"); 
insert into moyen_rep(nom_moyen_rep) values ("RETAPER DESSUS"); 
insert into type_panne(nom_type_panne) values ("ÇA MARCHE PAS"); 
insert into type_panne(nom_type_panne) values ("ÇA MARCHE PAS DU TOUT"); 
insert into type_mat(nom_type_mat) values ("DU MATOS CHEROS"); 
insert into type_mat(nom_type_mat) values ("DU MATOS CHEAPOS"); 
insert into equipes(nom_equipe) values ("LA A-TEAM"); 
insert into equipes(nom_equipe) values ("LA B-TEAM"); 
insert into type_employe(nom_type_employe) values ("TRAVAILLEUR"); 
insert into type_employe(nom_type_employe) values ("TRAVAILLEUR ++"); 
insert into employes(nom_employe, prenom_employe, adresse_employe, CP_employe, ville_employe, tel_employe, exp_employe) 
values ("STAKHANOV", "ALEKSEÏ", "AVENUE DE L'UKRAINE", "88-77-777-777", "TOREZ", "00 00 00 00 00", 12); 
insert into diplome(nom_dip) values ("DIPLOME DE L'ECOLE DE LA VIE"); 
insert into competences(nom_comp) values ("STAKHANOVISTE"); 
insert into utilisateur(identifiant_utilisateur, mdp_utilisateur) values ("AZERTY", "M0TD3P8SS3TURB0S3CR3T"); 
insert into droit(nom_droit) values ("TOUS"); 
insert into employes(nom_employe, prenom_employe, adresse_employe, CP_employe, ville_employe, tel_employe, exp_employe) 
values ("TWIN", "APHEX", "AVENUE DE TUSS", "789789", "CORNOUAILLE", "11 11 11 11 11", 32); 
insert into employes(nom_employe, prenom_employe, adresse_employe, CP_employe, ville_employe, tel_employe, exp_employe) 
values ("TWIN", "FX", "AVENUE DE SUTT", "9999", "CORNOUAILLE", "11 11 11 11 12", 33); 
insert into employes(nom_employe, prenom_employe, adresse_employe, CP_employe, ville_employe, tel_employe, exp_employe) 
values ("PUSHER", "SQUARE", "RUE 35424534", "33333", "MANCHESTER", "22 22 22 22 22", 16); 
insert into competences(nom_comp) values ("SPE-ELEC"); 
insert into diplome(nom_dip) values ("DIPLOME DE L'ECOLE DE LA RUE"); 

insert into avoir values (1,1); 
insert into avoir values (2,2); 

insert into acquerir values (1,1); 
insert into acquerir values (2,1); 
insert into acquerir values (3,3); 
insert into acquerir values (4,3); 

insert into contenir values (1,1); 
insert into contenir values (2,2); 

insert into intervenir values (1,1); 
insert into intervenir values (2,2); 

insert into obtenir values (1,1); 
insert into obtenir values (2,1); 
insert into obtenir values (3,2); 
insert into obtenir values (4,2); 

insert into produire values (1,1); 
insert into produire values (2,2); 
