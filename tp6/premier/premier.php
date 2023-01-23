<!DOCTYPE html>
<html>
 
 <head>
 	
<!-- En-tête du document Si avec l'UTF8 cela ne fonctionne pas mettez charset=ISO-8859-1 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 
  <!-- Balise meta  -->
  <meta name="title" content="Titre de la page" />
  <meta name="description" content="description de la page"/>
  <meta name="keywords" content="mots-clé1, mots-clé2, ..."/>
 
  <!-- Indexer et suivre 
  <meta name="robots" content="index,follow" /> -->
 
  <!--  Relier une feuille CSS externe
  <link rel='stylesheet' href='votre-fichier.css' type='text/css' /> -->
 
  <!-- Incorporez du CSS dans la page  -->
  <style type="text/css" media="screen">
  p { color:red; }
  </style>
 
 	
 </head>
 
 
 <body>

 <?php
  $nom = "LY-IENG";    //variable nom peut etre utilisé a plusieurs reprise
  $prenom = "Steven"; //variable prenom peut etre utilisé a plusieurs reprises
  echo "<br>bonjour et bienvenue</br>";
  echo "<br>Votre nom est: $nom</br>"; //On affiche le nom donnée dans la variable nom
  echo "<br>Votre prenom est : $prenom</br>"; //On affiche le prénom donnée dans la variable prenom


 ?>

 </body>
</html>