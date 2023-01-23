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
 
  <form name=formulaire  method="post" action="formcalc.php">

    calcul: </br>
            <input type="text" name="operand1"></br></br>
            <input type="text" name="operand2"></br>

            <input type="checkbox" name=calcul[] value="addition" id="addition"/>
            <label for="addition">addition</label></br>
            <input type="checkbox" name=calcul[] value="soustraction" id="soustraction"/>
            <label for="soustraction">soustraction</label></br>
            <input type="checkbox" name=calcul[] value="multiplication" id="multiplication"/>
            <label for="multiplication">multiplication</label></br>
            <input type="checkbox" name=calcul[] value="division" id="division"/>
            <label for="division">division</label></br>

    <input type="submit" value="calculer"/>
    </form>
    <p><?php
    $result=0;



    if(isset($_POST["calcul"]) AND isset($_POST["operand1"]) AND isset($_POST["operand2"]) ){

      foreach ($_POST["calcul"] as $operation){
        if($operation=="addition"){
          $result=$_POST["operand1"]+$_POST["operand2"];
          printf("addition = %d\n",$result);
        }
        if($operation=="soustraction"){
          $result=$_POST["operand1"]-$_POST["operand2"];
          printf("soustraction = %d\n",$result);
        }
        if($operation=="multiplication"){
          $result=$_POST["operand1"]*$_POST["operand2"];
          printf("multiplication = %d\n",$result);
        } 
        if($operation=="division"){
          $result=$_POST["operand1"]/$_POST["operand2"];
          printf("division = %d\n",$result);
        }
      }
    }
    ?></p>
 
 </body>
 <?php
 include("footer.php")
 ?>
</html>
