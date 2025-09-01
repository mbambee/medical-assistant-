<?php
$conn=mysqli_connect("localhost","root","","medical");
if (!$conn) {
    echo "erreur lors de la connextion". mysqli_error_connect($conn);
    die;
}else {
    echo "connextion reussi";
}
$name=$_POST["name"];
$surname=$_POST["surname"];

$password=$_POST["password"];



echo "<h1>all ur consulation $age</h1>";
echo "<table border=1>";
echo "<tr> ";
echo "<th>date</th>";
echo "<th>sypmtotes</th>";
echo "<th>diagnoctique</th>";
echo "</tr>";


$req="SELECT  datee,sympo,diagno from consultation as c , patientt as p where name='$name' and nom='$surname' and password.p='$password'and c.nom=p.nom ";
$res=mysqli_query($conn,$req);
if ($res) {
    while ($row=mysqli_fetch_array($res)) {
        echo"<tr>";
        echo"<td>$row[date]</td>";
        echo"<td>$row[sympo]</td>";
        echo"<td>$row[diagno]</td>";
        echo"</tr>";
    }
}
echo"</table>";