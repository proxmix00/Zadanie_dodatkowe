
<?php

$id = $_POST['id_klienta'];


if(isset($_POST['submit'])){

    $db = mysqli_connect('localhost','root','','erpdatabase');


    $query = "Select Imię, Nazwisko, Ulica, Numer_budynku, Miasto,email,nr_telefonu from customers where id = $id";

    $result = mysqli_query($db,$query);

    
    foreach($result as $row){
     Echo 'Imię:     ';
     Echo $row['Imię'];
     Echo '<br>';
    
     Echo 'Nazwisko:     ';
     Echo $row['Nazwisko'];
     Echo '<br>';


     Echo 'Ulica:     ';
     Echo $row['Ulica'];
     Echo '<br>';



     Echo 'Numer budynku:     ';
     Echo $row['Numer_budynku'];
     Echo '<br>';



     Echo 'Miasto:     ';
     Echo $row['Miasto'];
     Echo '<br>';


     Echo 'E-mail:     ';
     Echo $row['email'];
     Echo '<br>';


     Echo 'Numer telefonu:     ';
     Echo $row['nr_telefonu'];
     Echo '<br>';


}


$date = date("Y-m-d H:i:s");



$action = "insert into employeesactions values (null,'Wyświetlenie klientów ','$date')";
$actionresult = mysqli_query($db,$action);

mysqli_close($db);


Echo "<br><br>";
Echo '<a href="view_customers.html">Powrót do strony</a>';

}


?>