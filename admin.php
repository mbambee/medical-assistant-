<?php
$conn=mysqli_connect("localhost","root","","medical");
if (!$conn) {
    echo "erreur lors de la connextion". mysqli_error_connect($conn);
    die;
}else {
    echo "connextion reussi";
}
$age=$_POST["liste"];
$min=substr($age,0,2);
$max=substr($age,3,2);


echo "<h1>statistiques pour la tranche d'age: $age</h1>";
echo "<table border=1>";
echo "<tr> ";
echo "<th>maladie</th>";
echo "<th>nombre</th>";
echo "<th>porsontage</th>";
echo "</tr>";


$req="SELECT  count(nom) as c,maladie , count(maladie) as m from consultation where $min<=age<=$max ";
$res=mysqli_query($conn,$req);
if ($res) {
    while ($row=mysqli_fetch_array($res)) {
        echo"<tr>";
        echo"<td>$row[maladie]</td>";
        echo"<td>$row[m]</td>";
        if($row['c']>0){
            $perc=($row['m']/$row['c'])*100;
        } else {
            $percent=0;}
        echo"<td>".$perc."</td>";
        echo"</tr>";
    }
}
echo"</table>";




?>