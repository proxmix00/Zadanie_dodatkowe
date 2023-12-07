<?php

$nazwa = $_POST['nazwa'];
$opis = $_POST['opis'];
$cena = $_POST['cena'];
$dostepnosc = $_POST['dostepnosc'];





if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "insert into products values (null,'$nazwa','$opis',$cena,$dostepnosc)";
    
    $result = mysqli_query($db,$query);

    $date = date("Y-m-d H:i:s");



    $action = "insert into employeesactions values (null,'Dodanie produktu','$date')";
    $actionresult = mysqli_query($db,$action);

    
    mysqli_close($db);
    
    Echo "Dodano produkt";
    Echo "<br><br>";
    Echo '<a href="add_products.html">Powrót do strony</a>';
    
    }








?>