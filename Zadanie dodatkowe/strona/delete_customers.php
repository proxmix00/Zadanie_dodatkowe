<?php


$id_klienta = $_POST['id_klienta'];


if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "Delete from customers where ID = '$id_klienta'";
    
    $result = mysqli_query($db,$query);


    $date = date("Y-m-d H:i:s");



    $action = "insert into employeesactions values (null,'Usuwanie klienta','$date')";
    $actionresult = mysqli_query($db,$action);

    
    mysqli_close($db);
    
    Echo "Usunięto klienta";
    Echo "<br><br>";
    Echo '<a href="delete_customer.html">Powrót do strony</a>';
    
    }



?>