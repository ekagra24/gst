<?php 
    session_start();
    require_once "./database/connect.php";
    require_once "./app/helpers/helpers.php";
  
    if(!isset($_SESSION['admin_id'])){
        redirect('back');
    }
    $db = new DB();
    $db->connect();
    $flag = true;

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $product_data = $_POST;
        $flag = doesAllValueExists($product_data);

        if($flag){
            $gst = $product_data[':product_gst']/100;
            $quantity = $product_data[":product_quantity"];
            $product_orginal_price = $product_data[":product_price"];
            $discount = $product_data[":product_discount"]/100;
            $product_netprice = $product_orginal_price*$quantity*(1+$gst);
            $product_netprice = $product_netprice*(1-$discount);

            $product_data[':product_total'] = $product_netprice;

            if($db->insertProductInfo($product_data)){
                redirect("invoice");
                exit();
            }
            
        }
    }

    
    

    require "./partials/header.php";
    require "./partials/navigation.php";
    require "./views/product_info.view.php";
    require "./partials/footer.php";
?>