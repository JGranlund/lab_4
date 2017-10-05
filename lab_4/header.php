<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta name="description" content="Bookmaulers - smashing books!">
        <title>Bokmaulers</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900|Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link rel="stylesheet" href="css/main.css" type="text/css">
    </head>
    <body>
            <header>
                		<div id="headertext">Bookmaulers</div>
                		<nav>
                			<ul id="topnav">
                				<li><a class="<?php echo ($current_page =="index.php"|| $current_page=="")?'active':NULL?>" href="index.php">Home</a></li>
                				<li><a class="<?php echo ($current_page=='about_us.php')? 'active':NULL?>" href="about_us.php">About us</a></li>
                				<li><a class="<?php echo ($current_page=='library.php')? 'active':NULL?>" href="library.php">Browse books</a></li>
                				<li><a class="<?php echo ($current_page=='my_library.php')? 'active':NULL?>" href="my_library.php">My books</a></li>
                				<li><a class="<?php echo ($current_page=='contact.php')? 'active':NULL?>" href="contact.php">Contact</a></li>
                                <li><a class="<?php echo ($current_page=='gallery.php')? 'active':NULL?>" href="gallery.php">Gallery</a></li>
                                <li><a class="<?php echo ($current_page=='sqlinjection.php')? 'active':NULL?>" href="sqlinjection.php">Login</a></li>
                			</ul>

                		</nav>
                        <div id="account">

                        </div>

            </header>
            