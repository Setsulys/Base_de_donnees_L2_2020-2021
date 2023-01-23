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
  footer{position:absolute;bottom:0}
  img{width : 50px; height:auto;}
  </style>
  <?php 
  $tp=6;
  include("header.php")
  ?>
 </head>
 
 
 <body>
    <p><?php
    $jour= $_POST["Jour"];
    $mois= $_POST["Mois"];
    $annee= $_POST["Annee"];
    $loisir=$_POST["Loisir"];

    echo "La date choisis est le $jour/$mois/$annee<br>"; 
    
    echo "vous pratiquez aussi comme loisir : $loisir";

    ?></p>
 
 </body>
 <?php
 include("footer.php")
 ?>
</html>
