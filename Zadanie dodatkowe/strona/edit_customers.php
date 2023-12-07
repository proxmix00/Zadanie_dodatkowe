<?php


$id = $_POST['id'];
$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$ulica = $_POST['ulica'];
$nr_budynku = $_POST['Nr_budynku'];
$miasto = $_POST['Miasto'];
$email = $_POST['email'];
$nr_telefonu = $_POST['nr_telefonu'];



if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');


    $query = "Update customers set 
          imię = '$imie',
          Nazwisko = '$nazwisko',
          Ulica = '$ulica',
          Numer_budynku = '$nr_budynku',
          Miasto = '$miasto',
          email = '$email',
          nr_telefonu = $nr_telefonu
          where ID = $id";

    $result = mysqli_query($db,$query);


    $date = date("Y-m-d H:i:s");



    $action = "insert into employeesactions values (null,'Edycja klienta','$date')";
    $actionresult = mysqli_query($db,$action);


    mysqli_close($db);

    Echo "Zedytowano klienta";
    Echo "<br><br>";
    Echo '<a href="edit_customer.html">Powrót do strony</a>';

}


?>