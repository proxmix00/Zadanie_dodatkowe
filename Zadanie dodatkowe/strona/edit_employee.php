<?php


$id = $_POST['id'];
$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$stanowisko = $_POST['stanowisko'];
$wynagrodzenie = $_POST['Wynagrodzenie'];
$ulica = $_POST['ulica'];
$nr_budynku = $_POST['Nr_budynku'];
$miasto = $_POST['Miasto'];
$nr_telefonu = $_POST['nr_telefonu'];



if(isset($_POST['submit'])){

$db = mysqli_connect('localhost','root','','erpdatabase');


$query = "Update employees set 
          imię = '$imie',
          Nazwisko = '$nazwisko',
          Stanowisko = '$stanowisko',
          Wynagrodzenie = '$wynagrodzenie',
          Ulica = '$ulica',
          numer_budynku = '$nr_budynku',
          Miasto = '$miasto',
          nr_telefonu = $nr_telefonu
          where ID = $id";

$result = mysqli_query($db,$query);


$date = date("Y-m-d H:i:s");



$action = "insert into employeesactions values (null,'Edycja pracownika','$date')";
$actionresult = mysqli_query($db,$action);


mysqli_close($db);

Echo "Zedytowano pracownika";
Echo "<br><br>";
Echo '<a href="edit_employee.html">Powrót do strony</a>';

}


?>