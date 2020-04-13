<?php 
    session_start();
    require_once "./database/connect.php";
    require_once "./app/helpers/redirect.php";
    
    if(!isset($_SESSION['admin_id'])){
        redirect('back');
    }
    $db = new DB();
    $db->connect();

    

    require "./partials/header.php";
    require "./partials/navigation.php";
?>