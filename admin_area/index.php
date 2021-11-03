<?php

    session_start();
    include("includes/db.php");

    if(!isset($_SESSION['admin_email'])){

        echo "<script>window.open('login.php','_self')</script>";

    }else{

        $admin_session = $_SESSION['admin_email'];

        $get_admin = "select * from admins where admin_email='$admin_session'";

        $run_admin = mysqli_query($con,$get_admin);

        $row_admin = mysqli_fetch_array($run_admin);

        $admin_id = $row_admin['admin_id'];

        $admin_name = $row_admin['admin_name'];

        $admin_email = $row_admin['admin_email'];

        $admin_image = $row_admin['admin_image'];

        $admin_country = $row_admin['admin_country'];

        $admin_about = $row_admin['admin_about'];

        $admin_contact = $row_admin['admin_contact'];

        $admin_job = $row_admin['admin_job'];

        $get_products = "select * from products";

        $run_products = mysqli_query($con,$get_products);

        $count_products = mysqli_num_rows($run_products);

        $get_customers = "select * from customers";

        $run_customers = mysqli_query($con,$get_customers);

        $count_customers = mysqli_num_rows($run_customers);

        $get_p_categories = "select * from product_categories";

        $run_p_categories = mysqli_query($con,$get_p_categories);

        $count_p_categories = mysqli_num_rows($run_p_categories);

        $get_pending_orders = "select * from pending_orders";

        $run_pending_orders = mysqli_query($con,$get_pending_orders);

        $count_pending_orders = mysqli_num_rows($run_pending_orders);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <style type='text/css'>

  body{
      margin-top: 100px;
  }

  #wrapper{
      padding-left: 0px;
  }

  #page-wrapper{
      width: 100%;
      padding: 0;
      background-color: #f9f9f9;
  }

  @media (min-width: 768px){
      body{
          margin-top: 50px;
  }

      #wrapper{
          padding-left: 255px;
  }

      #page-wrapper{
          padding: 10px;
  }
  }

  /*  Top Navigation Styles  */

  .top-nav{
      0 15px;
  }

  .top-nav>li{
      float: left;
      display: inline-block;
  }

  .top-nav>li>a{
      color: #999999;
      line-height: 20px;
      padding-top: 15px;
      padding-bottom: 15px;
  }

  .top-nav>li>a:hover, .top-nav>li>a:focus{
      color: #000000;
  }

  /*  Sidebar Styles  */

  @media (min-width: 768px){
      .side-nav{
          position: fixed;
          top: 51px;
          bottom: 0;
          width: 255px;
          overflow-y: auto;
          overflow-x: hidden;
          background-color: #222222;
          padding-bottom: 40px;
          border-radius: 0;
      }
      .side-nav>li>a{
          width: 255px;
      }
      .side-nav>li>a:hover, .side-nav>li>a:focus{
          outline: none;
          background-color: #000000 !important;
      }
  }

  .side-nav>li>ul{
      padding: 0;
  }

  .side-nav>li>ul>li>a{
      padding: 10px 15px 10px 38px;
      text-decoration: none;
      color: #999999;
      display: block;
  }

  .side-nav>li>ul>li>a:hover{
      color: #ffffff;
  }

  /*  Custom Color For Panel  */

  .huge{
      font-size: 40px;
      line-height: normal;
  }

  .panel-green{
      border-color: #5cd85c;
  }

  .panel-green>.panel-heading{
      color: #ffffff;
      background-color: #5cd85c;
  }

  .panel-green>a{
      color: #5cd85c;
  }

  .panel-green>a:hover{
      color: #3d8c3d;
  }

  .panel-orange{
      border-color: #f0ad4e;
  }

  .panel-orange>.panel-heading{
      color: #ffffff;
      background-color: #f0ad4e;
  }

  .panel-orange>a{
      color: #f0ad4e;
  }

  .panel-orange>a:hover{
      color: #ba8539;
  }

  .panel-red{
      border-color: #d9534f;
  }

  .panel-red>.panel-heading{
      color: #ffffff;
      background-color: #d9534f;
  }

  .panel-red>a{
      color: #d9534f;
  }

  .panel-red>a:hover{
      color: #8d4341;
  }

  /*  Admin Profile Styling  */

  .panel-body{
      border-radius: 5px;
  }

  .thumb-info{
      position: relative;
  }

  .rounded{
      border-radius: 10px;
  }

  hr{
      border: 0;
      height: 1px;
      margin: 10px 0 10px 0;
  }

  hr.dotted{
      border-bottom: 1px #dddddd dotted;
      height: 0px;
      margin: 10px 0 10px 0;
  }

  .thumb-info .thumb-info-title{
      background: rgba(36,27,28,.9);
      bottom: 10%;
      color: #ffffff;
      font-size: 18px;
      font-weight: 600;
      left: 0;
      letter-spacing: -1px;
      padding: 9px 11px 9px;
      position: absolute;
      text-transform: uppercase;
      z-index: 1;
  }

  .thumb-info .thumb-info-inner{
      display: block;
  }

  .thumb-info .thumb-info-type{
      background: #0088cc;
      display: inline-block;
      border-radius: 2px;
      float: left;
      font-size: 12px;
      font-weight: 400;
      letter-spacing: 0;
      margin: 8px -2px -15px -2px;
      padding: 2px 9px;
      text-transform: none;
  }

  .widget-content-expanded{
      font-size: 15px;
  }

  .widget-content-expanded span{
      font-weight: 600;
  }

  .widget-content-expanded i{
      color: #0088cc;
      margin-right: 5px;
  }
 </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BADBEATS ADMIN PANEL</title>
    <link rel="stylesheet" href="css/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div id="wrapper"><!-- #wrapper begin -->

       <?php include("includes/sidebar.php"); ?>

        <div id="page-wrapper"><!-- #page-wrapper begin -->
            <div class="container-fluid"><!-- container-fluid begin -->

                <?php

                    if(isset($_GET['dashboard'])){

                        include("dashboard.php");

                }   if(isset($_GET['insert_product'])){

                        include("insert_product.php");

                }   if(isset($_GET['view_products'])){

                        include("view_products.php");

                }   if(isset($_GET['delete_product'])){

                        include("delete_product.php");

                }   if(isset($_GET['edit_product'])){

                        include("edit_product.php");

                }   if(isset($_GET['insert_p_cat'])){

                        include("insert_p_cat.php");

                }   if(isset($_GET['view_p_cats'])){

                        include("view_p_cats.php");

                }   if(isset($_GET['delete_p_cat'])){

                        include("delete_p_cat.php");

                }   if(isset($_GET['edit_p_cat'])){

                        include("edit_p_cat.php");

                }   if(isset($_GET['insert_cat'])){

                        include("insert_cat.php");

                }   if(isset($_GET['view_cats'])){

                        include("view_cats.php");

                }   if(isset($_GET['edit_cat'])){

                        include("edit_cat.php");

                }   if(isset($_GET['delete_cat'])){

                        include("delete_cat.php");

                }   if(isset($_GET['insert_slide'])){

                        include("insert_slide.php");

                }   if(isset($_GET['view_slides'])){

                        include("view_slides.php");

                }   if(isset($_GET['delete_slide'])){

                        include("delete_slide.php");

                }   if(isset($_GET['edit_slide'])){

                        include("edit_slide.php");

                }   if(isset($_GET['insert_box'])){

                        include("insert_box.php");

                }   if(isset($_GET['view_boxes'])){

                        include("view_boxes.php");

                }   if(isset($_GET['delete_box'])){

                        include("delete_box.php");

                }   if(isset($_GET['edit_box'])){

                        include("edit_box.php");

                }   if(isset($_GET['view_customers'])){

                        include("view_customers.php");

                }   if(isset($_GET['delete_customer'])){

                        include("delete_customer.php");

                }   if(isset($_GET['view_orders'])){

                        include("view_orders.php");

                }   if(isset($_GET['delete_order'])){

                        include("delete_order.php");

                }   if(isset($_GET['view_payments'])){

                        include("view_payments.php");

                }   if(isset($_GET['delete_payment'])){

                        include("delete_payment.php");

                }   if(isset($_GET['view_users'])){

                        include("view_users.php");

                }   if(isset($_GET['delete_user'])){

                        include("delete_user.php");

                }   if(isset($_GET['insert_user'])){

                        include("insert_user.php");

                }   if(isset($_GET['user_profile'])){

                        include("user_profile.php");

                }   if(isset($_GET['insert_terms'])){

                        include("insert_terms.php");

                }   if(isset($_GET['view_terms'])){

                        include("view_terms.php");

                }   if(isset($_GET['delete_term'])){

                        include("delete_term.php");

                }   if(isset($_GET['edit_term'])){

                        include("edit_term.php");

                }   if(isset($_GET['edit_css'])){

                        include("edit_css.php");

                }   if(isset($_GET['insert_manufacturer'])){

                        include("insert_manufacturer.php");

                }   if(isset($_GET['view_manufacturers'])){

                        include("view_manufacturers.php");

                }   if(isset($_GET['delete_manufacturer'])){

                        include("delete_manufacturer.php");

                }   if(isset($_GET['edit_manufacturer'])){

                        include("edit_manufacturer.php");

                }

                ?>

            </div><!-- container-fluid finish -->
        </div><!-- #page-wrapper finish -->
    </div><!-- wrapper finish -->

<script src="js/jquery-331.min.js"></script>
<script src="js/bootstrap-337.min.js"></script>
</body>
</html>


<?php } ?>
