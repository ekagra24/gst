<?php 
    session_start();
    require_once "./database/connect.php";
    require_once "./app/helpers/helpers.php";

    // Security check
    if(!isset($_SESSION['admin_id'])){
        echo $_SESSION['admin_id'];
        redirect('back');
    }
    $db = new DB();
    $db->connect();
    $flag = true;

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $customer_data = $_POST;
        $flag = doesAllValueExists($customer_data);

        if($flag){
            print_r($customer_data);
            if($db->insertCustomerInfo($customer_data)){
                $_SESSION['customer_name'] = $customer_data[':customer_name'];
                redirect("product_info");
                exit();
            }
        }
    }
    

    require "./partials/header.php";
    require "./partials/navigation.php";
    require "./views/dashboard.view.php";
    require "./partials/footer.php"
?>

