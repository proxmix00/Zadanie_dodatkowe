
<?php

$id = $_POST['id_pracownika'];


if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');


    $query = "Select Imię, Nazwisko,Stanowisko,Wynagrodzenie,Ulica, numer_budynku, Miasto,nr_telefonu from employees where id = $id";

    $result = mysqli_query($db,$query);

    
    foreach($result as $row){
     Echo 'Imię:     ';
     Echo $row['Imię'];
     Echo '<br>';
    
     Echo 'Nazwisko:     ';
     Echo $row['Nazwisko'];
     Echo '<br>';

     Echo 'Stanowisko:     ';
     Echo $row['Stanowisko'];
     Echo '<br>';


     Echo 'Wynagrodzenie:     ';
     Echo $row['Wynagrodzenie'];
     Echo '<br>';


     Echo 'Ulica:     ';
     Echo $row['Ulica'];
     Echo '<br>';



     Echo 'Numer budynku:     ';
     Echo $row['numer_budynku'];
     Echo '<br>';



     Echo 'Miasto:     ';
     Echo $row['Miasto'];
     Echo '<br>';


     

     Echo 'Numer telefonu:     ';
     Echo $row['nr_telefonu'];
     Echo '<br>';


}


$date = date("Y-m-d H:i:s");



$action = "insert into employeesactions values (null,'Wyświetlenie pracowników','$date')";
$actionresult = mysqli_query($db,$action);

mysqli_close($db);


Echo "<br><br>";
Echo '<a href="view_employee.html">Powrót do strony</a>';

}


?>