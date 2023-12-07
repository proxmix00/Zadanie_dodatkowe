<?php


$id = $_POST['id_pracownika'];


if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
    $query = "Delete from employees where ID = '$id'";
    
    $result = mysqli_query($db,$query);

    $date = date("Y-m-d H:i:s");



    $action = "insert into employeesactions values (null,'Usuwanie pracownika','$date')";
    $actionresult = mysqli_query($db,$action);
    
    mysqli_close($db);
    
    Echo "Usunięto pracownika";
    Echo "<br><br>";
    Echo '<a href="delete_employee.html">Powrót do strony</a>';
    
    }



?>