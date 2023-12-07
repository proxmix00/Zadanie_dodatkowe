<?php

$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$stanowisko = $_POST['stanowisko'];
$wynagrodzenie = $_POST['wynagrodzenie'];
$ulica = $_POST['ulica'];
$nr_budynku = $_POST['Nr_budynku'];
$miasto = $_POST['Miasto'];
$nr_telefonu = $_POST['nr_telefonu'];



if(isset($_POST['submit'])){

$db = mysqli_connect('localhost','root','','erpdatabase');


$query = "insert into employees values (null,'$imie','$nazwisko','$stanowisko','$wynagrodzenie','$ulica','$nr_budynku','$miasto',$nr_telefonu)";

$result = mysqli_query($db,$query);

$date = date("Y-m-d H:i:s");

$action = "insert into employeesactions values (null,'Dodanie pracownika','$date')";
$actionresult = mysqli_query($db,$action);

mysqli_close($db);

Echo "dodano pracownika";
Echo "<br><br>";
Echo '<a href="add_employee.html">Powrót do strony</a>';

}


?>