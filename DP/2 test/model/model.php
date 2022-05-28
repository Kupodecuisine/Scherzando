<?php
	 try{
			$query = $database->query('select prenom_musicien, nom_musicien, nom_groupe from musicien
										inner join appartenir on appartenir.id_musicien = musicien.id_musicien
										inner join groupe on groupe.id_groupe = appartenir.id_groupe;');
			while($data =$query->fetch()){
				echo 
						'
						<div>	
								<h1>Voici : '.$data['nom_groupe'].'</h1>
						</div>	
						<div>
								<h2>Composé de : </h2>
						</div>
						<div>		
								<h3>'.$data['prenom_musicien'].' '.$data['nom_musicien'].'</h3>
						</div>
						';
				}
	} catch(Exception $e){
			die('Erreur : ' .$e->getMessage());
	}
?>

// <?php
	 // try{
			// $query = $database->query('SELECT * FROM morceau');
			// while($data =$query->fetch()){
				// echo 
						// '
						// <section class="containTrack">
						// <div class="imgDiv">
							// <img src="'.$data['image_morceau'].'" height="300px" width="300px"></img>
						// </div>	
						// <div>	
								// <h2 class="titreMorceau">'.$data['nom_morceau'].'</h2>
								
								// <div class="audioLecteur">
									// <audio controls controlsList="nodownload noplaybackrate" src="'.$data['morceau'].'">
									// =( erreur =(
									// </audio>
								// </div>
						        
								// <p><strong>Compositeur:</strong> '.$data['compositeur_morceau'].'</p>
								// <p><strong>Déscription:</strong> '.$data['description_morceau'].'</p>
								// <p><strong>Genre:</strong> '.$data['genre_morceau'].'</p>
						// </div>
						
						// <a class="btnBrutal2" href="modifier.php?name='.$data['nom_morceau'].'">Modifier</a>
						
						// </section>
						// ';
				// }
	// } catch(Exception $e){
			// die('Erreur : ' .$e->getMessage());
	// }
// ?>
