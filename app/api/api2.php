<?php

        // set up the connection variables
        include 'db.php';
        // connect to the database
        $dbh = new PDO("mysql:host=$hostname;dbname=$db_name", $username, $password);
        // NOTE fixing the api over here
        // NOTE 6 pieces [0] Users [1] Groups [2] Courses [3] Courses_to_groups [4] Users_to_courses [5] user_to_groups


        //NOTE USERS
        // a query get all the correct records from the users table
        $sqlusers = 'SELECT * FROM users';

        // use prepared statements, even if not strictly required is good practice
        $stmtusers = $dbh->prepare( $sqlusers );

        // execute the query
        $stmtusers->execute();

        // fetch the results into an array
        $resultusers = $stmtusers->fetchAll( PDO::FETCH_ASSOC );

        //NOTE GROUPS
        $sqlgroups = 'SELECT * FROM groups';

        $stmtgroups = $dbh->prepare( $sqlgroups );

        $stmtgroups->execute();

        $resultgroups= $stmtgroups->fetchAll( PDO::FETCH_ASSOC );

        //NOTE COURSES
        $sqlcourses = 'SELECT * FROM courses';

        $stmtcourses = $dbh->prepare( $sqlcourses );

        $stmtcourses->execute();

        $resultcourses= $stmtcourses->fetchAll( PDO::FETCH_ASSOC );

        //NOTE COURSES_to_GROUPS
        $sqlcoursestogroups = 'SELECT * FROM courses_to_groups';

        $stmtcoursestogroups  = $dbh->prepare( $sqlcoursestogroups );

        $stmtcoursestogroups ->execute();

        $resultcoursestogroups = $stmtcoursestogroups ->fetchAll( PDO::FETCH_ASSOC );

        //NOTE USERS_to_COURSES
        $sqluserstocourses = 'SELECT * FROM users_to_courses';

        $stmtuserstocourses  = $dbh->prepare( $sqluserstocourses );

        $stmtuserstocourses ->execute();

        $resultuserstocourses = $stmtuserstocourses ->fetchAll( PDO::FETCH_ASSOC );


        //NOTE USERS_to_GROUPS
        $sqluserstogroups = 'SELECT * FROM users_to_groups';

        $stmtuserstogroups = $dbh->prepare( $sqluserstogroups );

        $stmtuserstogroups ->execute();

        $resultuserstogroups = $stmtuserstogroups ->fetchAll( PDO::FETCH_ASSOC );





        // NOTE colleting everything for converting
        $result=array();
        array_push($result,$resultusers,$resultgroups,$resultcourses,$resultcoursestogroups,$resultuserstocourses,$resultuserstogroups);

        // convert it all to jSON TODO change result
        $json = json_encode( $result );

        // undo PDO connection
        $dbh = null;


        // echo the json string
        echo $json;
?>
