<?php
$conn=mysqli_connect("localhost","root","","medical");
if(!$conn) {
    echo "erreur lors de la connextion". mysqli_error_connect($conn);
    die;
}else {
    echo "connextion reussi";
}
$nom=$_POST["nom"];
$pre=$_POST["pre"];
$sexe=$_POST["sexe"];
$syp=$_POST["syp"];


$req="SELECT * from maladie , medicament where symptomes='$syp' and maladie.nom=medicament.Maladie";
$res=mysqli_query($conn,$req);
if ($res) {
    $row=mysqli_fetch_array($res);
    echo "<h1>Resultat du diagnostique</h1>";
    echo "<p><strong>patient:</strong>$nom $pre</p>";
    echo "<p><strong>patient:</strong>$sexe</p>";
    echo "<p><strong>patient:</strong>$syp</p>";
    echo "<p><strong>patient:</strong>$row[maladie]</p>";
    echo "<h3>medicaments proposes</h3>";
    echo "<li>$row[medicaments]<li>";

    $req1="INSERT INTO consultation (nom,prenom,sexe,age,symptomes,maladie,listeMedicament)
    values ('$nom',
    '$pre',
    '$sexe',
    (SELECT age from patient where prenom='$pre' and nom='$nom'),
    '$syp',
    '".$row['maladie']."',
    '".$row['medicaments']."')";
    if (mysqli_query($conn,$req1)) {
        echo" donner enregistrer avce succes";
    }else {
    echo" error dans la requete".mysqli_error($conn);
}
}else {
    echo" error dans la requete".mysqli_error($conn);
}
mysqli_close($conn);
?>