<?php

    $id=$_POST['id_produktu'];





    if(isset($_POST['submit'])){

        $db = mysqli_connect('localhost','root','','erpdatabase');
    
    
        $query = "Select Nazwa,Cena,Opis,Ilość from products where id=$id ";
    
        $result = mysqli_query($db,$query);
    

        foreach($result as $row){
            Echo 'Nazwa produktu:    ';
            Echo $row['Nazwa'];
            Echo '<br>';
            Echo 'Opis produktu:    ';
            Echo $row['Opis'];
            Echo '<br>';
            Echo 'Cena produktu:     ';
            Echo $row['Cena'];
            Echo '<br>';
            Echo 'Ilość produktów:     ';
            Echo $row['Ilość'];
        }


        $date = date("Y-m-d H:i:s");



        $action = "insert into employeesactions values (null,'Wyświetlenie produktów','$date')";
        $actionresult = mysqli_query($db,$action);

        
        mysqli_close($db);

        Echo "<br><br>";
        Echo '<a href="view_products.html">Powrót do strony</a>';   

}




?>