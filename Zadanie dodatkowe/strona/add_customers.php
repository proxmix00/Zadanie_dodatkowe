<?php

$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$ulica = $_POST['ulica'];
$nr_budynku = $_POST['Nr_budynku'];
$miasto = $_POST['Miasto'];
$email = $_POST['email'];
$nr_telefonu = $_POST['nr_telefonu'];



if(isset($_POST['submit'])){

$db = mysqli_connect('localhost','root','','erpdatabase');


$query = "insert into customers values (null,'$imie','$nazwisko','$ulica','$nr_budynku','$miasto','$email',$nr_telefonu)";

$result = mysqli_query($db,$query);



$date = date("Y-m-d H:i:s");



$action = "insert into employeesactions values (null,'Dodanie klienta','$date')";
$actionresult = mysqli_query($db,$action);


mysqli_close($db);

Echo "dodano klienta";
Echo "<br><br>";
Echo '<a href="add_customers.html">Powrót do strony</a>';

}


?>