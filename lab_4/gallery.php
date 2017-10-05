    <?php 
        include("config.php");
        include("header.php");
    ?>    	
    <main>
    		<div id="maincolumn">
                Welcome to your gallery, here you can save your pictures!

                <?php
                    $dirname = "uploadedfiles/";
                    $images = array_diff(scandir($dirname), array('.', '..'));


                    foreach($images as $image) {
                        echo $image;
                    echo '<img src="'.$dirname.$image.'" /><br />';
                }
                   ?>
                <div class="grid">
                    
                </div> 
    		</div>
    	</main>

    </body>