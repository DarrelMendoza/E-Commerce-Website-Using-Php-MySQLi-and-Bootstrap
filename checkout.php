<?php

    $active='Account';
    include("includes/header.php");

?>
<!-- Style Begin -->
     <style type='text/css'>

     #top {
   background: #333333;
   padding: 10px 0;}
   .btn-primary{
   color: rgb(255, 255, 255);
   background: #333333;
   border-color: #333333;
   }
   .btn-primary:hover{
   color: rgb(255, 255, 255);
   background: #555555;
   border-color: #555555;
   }


     </style>
<!-- Style Finish -->
   <div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->

               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href="index.php">Home</a>
                   </li>
                   <li>
                       Register
                   </li>
               </ul><!-- breadcrumb Finish -->

           </div><!-- col-md-12 Finish -->

           <div class="col-md-3"><!-- col-md-3 Begin -->

   <?php

    include("includes/sidebar.php");

    ?>

           </div><!-- col-md-3 Finish -->

           <div class="col-md-9"><!-- col-md-9 Begin -->

           <?php

           if(!isset($_SESSION['customer_email'])){

               include("customer/customer_login.php");

           }else{

               include("payment_options.php");

           }

           ?>

           </div><!-- col-md-9 Finish -->

       </div><!-- container Finish -->
   </div><!-- #content Finish -->

   <?php

    include("includes/footer.php");

    ?>

    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>


</body>
</html>
