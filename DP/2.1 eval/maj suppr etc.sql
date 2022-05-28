# maj suppr etc

use exo_bdd;
update competences
set nom_comp = "SPÉCIALITÉ ÉLECTRICITÉ"
where id_comp = 2;

delete from competences
where id_comp = 2;

select * from employes;

select nom_employe from employes;

select distinct nom_employe from employes;

select nom_employe, nom_comp from employes
inner join acquerir on acquerir.id_employe = employes.id_employe
inner join competences on competences.id_comp = acquerir.id_comp;

select nom_chaine, nom_chainestart from chaine_de_prod
inner join contenir on contenir.id_chaine = contenir.id_chaine
inner join entree_de_chaine on entree_de_chaine.id_chainestart = contenir.id_chainestart;

select nom_chaine, nom_chainestart from chaine_de_prod
right join contenir on contenir.id_chaine = contenir.id_chaine
right join entree_de_chaine on entree_de_chaine.id_chainestart = contenir.id_chainestart;

select count(*) from employes;

