<?php
    ob_start();
    //include header.php file
    include('header.php');
?>
<?php
    /* include banner area */
    include('Template/_banner-area.php');
    /* close include banner area */ 

    /* include top sale area*/
    include('Template/_top-sale.php');
    /* close include top sale area*/

    /* include special price area*/
    include('Template/_special-price.php');
    /* close include special price area*/

    /* include banner ads area*/
    include('Template/_banner-ads.php');
    /* close include banner ads area*/

    /* include new phones area*/
    include('Template/_new-phones.php');
    /* close include new phones area*/

    /* include blogs area*/
    include('Template/_blogs.php');
    /* close include blogs area*/

?>


<?php
    // include footer.php file
    include('footer.php');
?>