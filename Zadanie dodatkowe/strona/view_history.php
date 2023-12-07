<html lang="pl">

    <head>
        <title>Strona Internetowa</title>
        <meta charset="UTF-8">
        <meta name="description" content="Zadanie dodatkowe">
        <meta name="author" content="Adrian Tokarski">
        <link rel="stylesheet" href="style.css">
    </head>



    <body>

        <nav class="menu">    
            <a href="index.html">Strona Główna</a>

            <div class="dropdown">
            <a href="#">Edycja produktów</a>
                <ul>
                    <li><a href="add_products.html">Dodawanie produktów</a></li>
                    <li><a href="edit_products.html">Edytowanie produktów</a></li>
                    <li><a href="delete_products.html">Usuwanie produktów</a></li>
                    <li><a href="view_products.html">Przeglądanie produktów</a></li>
                </ul>
            </div>


            <div class="dropdown">
                <a href="#">Edycja klientów</a>
                    <ul>
                        <li><a href="add_customers.html">Dodawanie klientów</a></li>
                        <li><a href="edit_customer.html">Edytowanie klientów</a></li>
                        <li><a href="delete_customer.html">Usuwanie klientów</a></li>
                        <li><a href="view_customers.html">Przeglądanie klientów</a></li>
                    </ul>

            </div>


            <div class="dropdown">

                <a href="#">Edycja pracowników</a>
                    <ul>
                        <li><a href="add_employee.html">Dodawanie pracowników</a></li>
                        <li><a href="edit_employee.html">Edytowanie pracowników</a></li>
                        <li><a href="delete_employee.html">Usuwanie pracowników</a></li>
                        <li><a href="view_employee.html">Przeglądanie pracowników</a></li>
                        <li><a href="view_history.php">Akcje pracowników</a></li>
                    </ul>

            </div>

        </nav>

            <style>
                ol li {
                margin: 5px;
                }
                
            </style>
            <?php

                $db = mysqli_connect("localhost","root","","erpdatabase");

                $getdata = "Select typ_akcji,data_akcji from employeesactions"; 

                $query = mysqli_query($db,$getdata); 

                echo "<ol>";
                
                while ($result = mysqli_fetch_array($query)){
                    echo "<li>";
                    echo $result["typ_akcji"]." ".$result["data_akcji"];
                    echo "</li>";
                }

                echo "</ol>";

                mysqli_close($db);
            ?>
        


    </body>





</html>