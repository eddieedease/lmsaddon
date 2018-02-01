<?php

        // set up the connection variables
        include 'xyr.php';
        // connect to the database
        $dbh = new PDO("mysql:host=$hostname;dbname=$db_name;charset=utf8", $username, $password);
        // NOTE fixing the api over here
        // NOTE 6 pieces [0] Users [1] Groups [2] Courses [3] Courses_to_groups [4] Users_to_courses [5] user_to_lessons


        //NOTE POWER
        // a query get all the correct records from the users table
        $sqlpower = 'SELECT * FROM power';

        // use prepared statements, even if not strictly required is good practice
        $stmtpower = $dbh->prepare( $sqlpower );

        // execute the query
        $stmtpower->execute();

        // fetch the results into an array
        $resultpower = $stmtpower->fetchAll( PDO::FETCH_ASSOC );

        //NOTE aa
        // a query get all the correct records from the users table
        $sqlaa = 'SELECT * FROM aa';

        // use prepared statements, even if not strictly required is good practice
        $stmtaa = $dbh->prepare( $sqlaa );

        // execute the query
        $stmtaa->execute();

        // fetch the results into an array
        $resultaa = $stmtaa->fetchAll( PDO::FETCH_ASSOC );


        // NOTE colleting everything for converting
        $result=array();
        array_push($result,$resultpower,$resultaa);

        // convert it all to jSON TODO change result
        $json = json_encode( $result );

        // undo PDO connection
        $dbh = null;


        // echo the json string
        echo $json;
?>
