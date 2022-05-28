
# création bdd et tables
create database groupe_musique character set utf8 collate utf8_general_ci;
use groupe_musique;

create table musicien (
	id_musicien int auto_increment primary key not null,
    nom_musicien varchar(30),
    prenom_musicien varchar(30),
    age_musicien int); 
	
create table instrument (
	id_instrument int auto_increment primary key not null,
    type_instrument varchar(50),
    marque_instrument varchar(50),
    modele_instrument varchar(50));	
	
create table groupe (
	id_groupe int auto_increment primary key not null,
	nom_groupe varchar(50),
    genre_groupe varchar(50));	
	
# ajout clés étrangères et association

alter table instrument
add id_musicien int,
add constraint fk_instrument_musicien foreign key (id_musicien) references musicien(id_musicien);

create table appartenir(
	id_musicien int,
    id_groupe int,
    primary key(id_musicien, id_groupe),
    foreign key(id_musicien) references musicien(id_musicien),
    foreign key(id_groupe) references groupe(id_groupe)
);

# insertions
insert into musicien(nom_musicien, prenom_musicien, age_musicien) values ("Porcaro", "François", 33);
insert into musicien(nom_musicien, prenom_musicien, age_musicien) values ("Nomtype", "Jeff", 32);
insert into musicien(nom_musicien, prenom_musicien, age_musicien) values ("Lukather", "Steve", 30);
insert into musicien(nom_musicien, prenom_musicien, age_musicien) values ("Barbelivien", "Didier", 70);

insert into instrument(type_instrument, marque_instrument, modele_instrument) values ("Basse", "Fender", "Jazz Bass");
insert into instrument(type_instrument, marque_instrument, modele_instrument) values ("Batterie", "Pearl", "Custom");
insert into instrument(type_instrument, marque_instrument, modele_instrument) values ("Guitare", "Music Man", "Luke III");

insert into groupe(nom_groupe, genre_groupe) values ("Tata", "Pop-Rock");

insert into appartenir values (1,1); 
insert into appartenir values (2,1); 
insert into appartenir values (3,1); 

update musicien
set nom_musicien = "Porcaro"
where id_musicien = 2;

update musicien
set prenom_musicien = "Mike"
where id_musicien = 1;

delete from musicien
where age_musicien = 70;

select * from instrument;

select nom_groupe from groupe;

select count(*) from musicien;

select prenom_musicien, nom_musicien, nom_groupe from musicien
inner join appartenir on appartenir.id_musicien = musicien.id_musicien
inner join groupe on groupe.id_groupe = appartenir.id_groupe;

update instrument
set id_musicien = 1
where type_instrument = "Basse";

update instrument
set id_musicien = 2
where type_instrument = "Batterie";

update instrument
set id_musicien = 3
where type_instrument = "Guitare";
