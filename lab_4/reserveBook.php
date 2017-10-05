<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include ("config.php");
include ("header.php");
?>
<main>
    <div id="maincolumn">
                    

        <?php
        $bookid = trim($_GET['bookid']);
        echo '<INPUT type="hidden" name="bookid" value=' . $bookid . '>';

        $bookid = trim($_GET['bookid']);      // From the hidden field
        $bookid = addslashes($bookid);

        @ $db = new mysqli($dbserver, $dbuser, $dbpass, $dbname);

            if ($db->connect_error) {
                echo "could not connect: " . $db->connect_error;
                printf("<br><a href=index.php>Return to home page </a>");
                exit();
            }
            
           echo "You are reserving book with the ID:".$bookid;

            // Prepare an update statement and execute it
            $stmt = $db->prepare("UPDATE books SET reserved=1 WHERE book_id = ?");
            $stmt->bind_param('i', $bookid);
            $stmt->execute();
            printf("<br><a href=library.php>Search the library for more books</a>");
            printf("<br><a href=my_library.php>Return to your library </a>");
            printf("<br><a href=index.php>Return to home page </a>");
            exit;
            ?>

    </div>
</main>
