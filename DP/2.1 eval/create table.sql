create database exo_bdd character set utf8 collate utf8_general_ci;
use exo_bdd; 
create table utilisateur (
	id_utilisateur int auto_increment primary key not null, 
    identifiant_utilisateur varchar(50),
    mdp_utilisateur varchar(150));

create table droit (
	id_droit int auto_increment primary key not null,
    nom_droit varchar(50));
    
create table type_mat (
	id_type_mat int auto_increment primary key not null,
    nom_type_mat varchar(30));
    
create table entree_de_chaine (
	id_chainestart int auto_increment primary key not null,
    nom_chainestart varchar(30));

create table sortie_de_chaine (
	id_chainend int auto_increment primary key not null,
    nom_chainend varchar(30),
    dureeDeConserv_chainend int);

create table chaine_de_prod (
	id_chaine int auto_increment primary key not null,
    nom_chaine varchar(30));

create table pannes (
	id_panne int auto_increment primary key not null,
    duree_panne int);

create table type_panne (
	id_type_panne int auto_increment primary key not null,
    nom_type_panne varchar(50));
    
create table moyen_rep (
	id_moyen_rep int auto_increment primary key not null,
    nom_moyen_rep varchar(50));
    
create table equipes (
	id_equipe int auto_increment primary key not null,
    nom_equipe varchar(50));

create table employes (
	id_employe int auto_increment primary key not null,
    nom_employe varchar(30),
    prenom_employe varchar(30),
    adresse_employe varchar(30),
    CP_employe varchar(20),
    ville_employe varchar(30),
    tel_employe varchar(30),
    exp_employe tinyint);

create table type_employe (
	id_type_employe int auto_increment primary key not null,
    nom_type_employe varchar(50));
    
create table diplome (
	id_dip int auto_increment primary key not null,
    nom_dip varchar(50));
    
create table competences (
	id_comp int auto_increment primary key not null,
    nom_comp varchar(50));
    
    
    
    