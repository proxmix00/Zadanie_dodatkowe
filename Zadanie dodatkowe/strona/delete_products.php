<?php

$id_produktu = $_POST['id_produktu'];



if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "Delete from products where ID = $id_produktu";
    
    $result = mysqli_query($db,$query);
    
    mysqli_close($db);
    
    Echo "Usunięto produkt";
    
    }



?>