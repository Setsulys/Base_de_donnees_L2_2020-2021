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
 
  <form name=factoriel method="post" action="factoriel.php">

    calcul: </br>
            <input type="text" name="operand1"></br></br>
    <input type="submit" value="Valider" value="OK"/></form></br></br>

    <p><?php
    
    $factoriel=$_POST["operand1"];

    fact($factoriel);

    function fact($a){
      $resultat=1;
      if($a==0){
        printf("La factoriel de 0 est : %d",$a);
      }
      else{
        echo "La factoriel de $factoriel est : ";
        for($i=$a;$i>0;$i--){
          $resultat=$resultat*$i;
        }
        printf("%d",$resultat);
      }
    }

    ?></p>
 
 </body>
 <?php
 include("footer.php")
 ?>
</html>
