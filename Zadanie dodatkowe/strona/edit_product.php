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

    $date = date("Y-m-d H:i:s");



    $action = "insert into employeesactions values (null,'Edycja produktu','$date')";
    $actionresult = mysqli_query($db,$action);
    
    mysqli_close($db);
    
    Echo "Zedytowano produkt";
    Echo "<br><br>";
    Echo '<a href="edit_products.html">Powrót do strony</a>';

    
    }








?>