<?php


$id_klienta = $_POST['id_klienta'];


if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "Delete from customers where ID = '$id_klienta'";
    
    $result = mysqli_query($db,$query);
    
    mysqli_close($db);
    
    Echo "Usunięto klienta";
    
    }



?>