# clés étrangères et tables d association

use exo_bdd;

alter table utilisateur
add id_droit int,
add constraint fk_utilisateur_droit foreign key (id_droit) references droit(id_droit);

alter table entree_de_chaine
add id_type_mat int,
add constraint fk_entree_de_chaine_type_mat foreign key (id_type_mat) references type_mat(id_type_mat);

alter table sortie_de_chaine
add id_type_mat int,
add constraint fk_sortie_de_chaine_type_mat foreign key (id_type_mat) references type_mat(id_type_mat);

alter table pannes
add id_type_panne int,
add constraint fk_pannes_type_panne foreign key (id_type_panne) references type_panne(id_type_panne);

alter table employes
add id_type_employe int,
add constraint fk_employes_type_employe foreign key (id_type_employe) references type_employe(id_type_employe);

alter table employes
add id_equipe int,
add constraint fk_employes_equipes foreign key (id_equipe) references equipes(id_equipe);

create table obtenir (
	id_employe int,
    id_dip int,
    primary key(id_employe, id_dip),
    foreign key(id_employe) references employes(id_employe),
    foreign key(id_dip) references diplome(id_dip)
);

create table acquerir (
	id_employe int,
    id_comp int,
    primary key(id_employe, id_comp),
    foreign key(id_employe) references employes(id_employe),
    foreign key(id_comp) references competences(id_comp)
);

create table intervenir (
	id_equipe int,
    id_chaine int,
    primary key(id_equipe, id_chaine),
    foreign key(id_equipe) references equipes(id_equipe),
    foreign key(id_chaine) references chaine_de_prod(id_chaine)
);

create table contenir (
	id_chaine int,
    id_chainestart int,
    primary key(id_chaine, id_chainestart),
    foreign key(id_chaine) references chaine_de_prod(id_chaine),
    foreign key(id_chainestart) references entree_de_chaine(id_chainestart)
);

create table produire (
	id_chaine int,
    id_chainend int,
    primary key(id_chaine, id_chainend),
    foreign key(id_chaine) references chaine_de_prod(id_chaine),
    foreign key(id_chainend) references sortie_de_chaine(id_chainend)
);

create table avoir (
	id_panne int,
    id_moyen_rep int,
    primary key(id_panne, id_moyen_rep),
    foreign key(id_panne) references pannes(id_panne),
    foreign key(id_moyen_rep) references moyen_rep(id_moyen_rep)
);
