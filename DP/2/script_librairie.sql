drop database if exists librairie;
create database librairie CHARACTER SET utf8 COLLATE utf8_general_ci;
use librairie;

create table utilisateur(
id_utilisateur int auto_increment primary key,
nom_utilisateur varchar(50),
prenom_utilisateur varchar(50),
login_utilisateur varchar(50),
mdp_utilisateur varchar(255)
);

create table livre(
id_livre int primary key auto_increment,
titre_livre varchar(50),
auteur_livre varchar(50),
editeur_livre varchar(50),
nbr_pages_livre int,
prix_livre int,
stock_livre boolean,
img_livre varchar(255),
id_etat int,
id_genre int
);

create table visionner(
id_utilisateur int not null,
id_livre int not null,
primary key(id_utilisateur, id_livre)
);

create table genre(
id_genre int auto_increment primary key,
nom_genre varchar(50)
);

create table etat(
id_etat int auto_increment primary key,
nom_etat varchar(50)
);

alter table livre
add constraint fk_livre_etat foreign key (id_etat)
references etat(id_etat);

alter table livre
add constraint fk_livre_genre foreign key (id_genre)
references genre(id_genre);

alter table visionner
add constraint fk_visionner_utilisateur foreign key (id_utilisateur)
references utilisateur(id_utilisateur);

alter table visionner
add constraint fk_visionner_livre foreign key (id_livre)
references livre(id_livre);