<?php 
    session_start();
    require_once "./database/connect.php";
    require_once "./app/helpers/helpers.php";
    if(isset($_SESSION['admin_id'])){
        redirect('dashboard');
    }
    $db = new DB();
    $db->connect();

    if(isset($_POST['username']) && strlen($_POST['password'])){
        echo isset($_POST['password']);
        $admins = $db->getAdminByUsername($_POST['username']);
        print_r($admins);
        if($admins[0]['admin_password'] === $_POST['password']){
            session_start();
            $_SESSION["admin_id"] = $admins[0]['admin_id'];
            $_SESSION["admin_username"] = $admins[0]['admin_username'];
            $_SESSION["admin_name"] = $admins[0]['admin_name'];
            redirect('dashboard');
            exit();
        }
    }

    require "./partials/header.php";
    require "./partials/navigation.php";
    require "./views/login.view.php";
    require "./partials/footer.php"
?>

    
