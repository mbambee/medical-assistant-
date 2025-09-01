<?php
$conn=mysqli_connect("localhost","root","","medical");
if (!$conn) {
    echo "erreur lors de la connextion". mysqli_error_connect($conn);
    die;
}else {
    echo "connextion reussi";
}

$nom=$_POST["nom"];
$prenom=$_POST["prenom"];
$age=$_POST["age"];
$email=$_POST["email"];
$sexe=$_POST["sexe"];

$req="INSERT INTO patientt (nom,prenom,age,email,sexe) VALUES ('$nom','$prenom',$age,'$email','$sexe')";
if (mysqli_query($conn,$req)) {
        echo" donner enregistrer avce succes";
}else {
    echo" error dans la requete".mysqli_error($conn)
}


?>