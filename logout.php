<?php
    session_start();
    require_once "./app/helpers/helpers.php";
    if(isset($_SESSION['admin_id'])){
        session_unset();

        session_destroy();

    }
    redirect("back");


    

