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
 
  <form name=formulaire  method="post" action="exoLaffiche.php">
    jour :<select name="Jour">
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
      <option value="9">9</option>
      <option value="10">10</option>
      <option value="11">11</option>
      <option value="12">12</option>
      <option value="13">13</option>
      <option value="14">14</option>
      <option value="15">15</option>
      <option value="16">16</option>
      <option value="17">17</option>
      <option value="18">18</option>
      <option value="19">19</option>
      <option value="20">20</option>
      <option value="21">21</option>
      <option value="22">22</option>
      <option value="23">23</option>
      <option value="24">24</option>
      <option value="25">25</option>
      <option value="26">26</option>
      <option value="27">27</option>
      <option value="28">28</option>
      <option value="29">29</option>
      <option value="30">30</option>
      <option value="31">31</option>
    </select>

    Mois :<select name="Mois">
      <option value="1">Janvier</option>
      <option value="2">Février</option>
      <option value="3">Mars</option>
      <option value="4">Avril</option>
      <option value="5">Mai</option>
      <option value="6">Juin</option>
      <option value="7">Juillet</option>
      <option value="8">Août</option>
      <option value="9">Septembre</option>
      <option value="10">Octobre</option>
      <option value="11">Novembre</option>
      <option value="12">Décembre</option>
    </select>

    Année : <select name="Annee">
      <option value="1990">1990</option>
      <option value="1990">1991</option>
      <option value="1990">1992</option>
      <option value="1990">1993</option>
      <option value="1990">1994</option>
      <option value="1990">1995</option>
      <option value="1990">1996</option>
      <option value="1990">1997</option>
      <option value="1990">1998</option>
      <option value="1990">1999</option>
      <option value="2000">2000</option>
      <option value="2001">2001</option>
      <option value="2002">2002</option>
      <option value="2003">2003</option>
      <option value="2004">2004</option>
      <option value="2005">2005</option>
      <option value="2006">2006</option>
      <option value="2007">2007</option>
      <option value="2008">2008</option>
      <option value="2009">2009</option>
      <option value="2010">2010</option>
      <option value="2011">2011</option>
      <option value="2012">2012</option>
      <option value="2013">2013</option>
      <option value="2014">2014</option>
      <option value="2015">2015</option>
      <option value="2016">2016</option>
      <option value="2017">2017</option>
      <option value="2018">2018</option>
      <option value="2019">2019</option>
      <option value="2020">2020</option>
    </select></br></br>
    

    Loisir favori
    <br><input type="radio" name=Loisir value="Sports" id="Sports"/>
        <label for="Sports">Sports</label></br>
        <input type="radio" name=Loisir value="Musique" id="Musique"/>
        <label for="Musique">Musique</label></br>
        <input type="radio" name=Loisir value="Jeux" id="Jeux"/>
        <label for="Jeux">Jeux</label></br>
        <input type="radio" name=Loisir value="Voyages" id="Voyages"/>
        <label for="Voyages">Voyages</label></br>

  <input type="submit" value="Valider" value="OK"/></br></br>

    

    <p><?php
    

    ?></p>
 
 </body>
 <?php
 include("footer.php")
 ?>
</html>
