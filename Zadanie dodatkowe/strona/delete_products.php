<?php

$id_produktu = $_POST['id_produktu'];



if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "Delete from products where ID = $id_produktu";
    
    $result = mysqli_query($db,$query);


    $date = date("Y-m-d H:i:s");



    $action = "insert into employeesactions values (null,'Usuwanie produktu','$date')";
    $actionresult = mysqli_query($db,$action);

    
    mysqli_close($db);
    
    Echo "Usunięto produkt";
    Echo "<br><br>";
    Echo '<a href="delete_products.html">Powrót do strony</a>';
    
    }



?>