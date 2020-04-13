<?php 
    session_start();
    require_once "./database/connect.php";
    require_once "./app/helpers/helpers.php";
  
    if(!isset($_SESSION['admin_id'])){
        redirect('back');
    }
    $db = new DB();
    $db->connect();

    $invoice = $db->get_invoice() ?? null;
    
    require "./partials/header.php";
    require "./partials/navigation.php";
    require "./views/invoice.view.php";
    require "./partials/footer.php";

    ?>