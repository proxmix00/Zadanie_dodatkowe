<?php

$id = $_POST['id'];
$nazwa = $_POST['nazwa'];
$opis = $_POST['opis'];
$cena = $_POST['cena'];
$dostepnosc = $_POST['dostepnosc'];





if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "Update products set 
              Nazwa = '$nazwa',
              Opis = '$opis',
              Cena = $cena,
              Ilość = $dostepnosc
              where ID = $id";
            
    
    $result = mysqli_query($db,$query);
    
    mysqli_close($db);
    
    Echo "Zedytowano produkt";
    
    }








?>