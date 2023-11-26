<?php

$nazwa = $_POST['nazwa'];
$opis = $_POST['opis'];
$cena = $_POST['cena'];
$dostepnosc = $_POST['dostepnosc'];





if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "insert into products values (null,'$nazwa','$opis',$cena,$dostepnosc)";
    
    $result = mysqli_query($db,$query);
    
    mysqli_close($db);
    
    Echo "Dodano produkt";
    
    }








?>