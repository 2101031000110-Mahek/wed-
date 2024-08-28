<?php
// require MySql Connection
use database\DBController;

require ('database/DBController.php');

// require Product class
require ('database/Product.php');

// require Cart class
require ('database/Cart.php');

// DBController object
$db = new DBController();

// Product object
$product = new \database\Product($db);
$product_shuffle = $product->getData();

// Cart object
$Cart = new \database\Cart($db);

?>
