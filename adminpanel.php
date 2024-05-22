<?php
session_start();
include('function.php');
include('config.php');
include('adminnav.php');
$user_data = check_login($conn);

if($user_data['usertype'] !== 'admin') {
    header("Location: login.php");
    die;
}

$pending_users = mysqli_query($conn, "SELECT * FROM users WHERE is_approved = FALSE");
?>

<!DOCTYPE html>
<!--=== Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <!-- Bootstrap CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css' />
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css' />
  
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" type="text/css" href="adminpanel.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <title>CvSU ONLINE CANVASSING</title>
  <link rel="icon" href="https://myportal.cvsu.edu.ph/assets/img/resized/cvsu-logo.png" type="image/gif" sizes="18x16">

</head>

<body>
    <section class="dashboard">
        <div class="top">
            <i class="uil uil-bars sidebar-toggle"></i>

            <div class="search-box">
                <i class="uil uil-search"></i>
                <input type="text" placeholder="Search here...">
            </div>
            
            <img src="images/profile.jpg" alt="">
        </div>

        <div class="dash-content">
            <div class="overview">
                <div class="title">
                    <i class="uil uil-tachometer-fast-alt"></i>
                    <span class="text">Dashboard</span>
                </div>

                <div class="boxes">
                    <div class="box box1">
                        <i class="uil uil-user"></i>
                        <span class="text">Total Users</span>
                        <span class="number">
                          <?php

                          require 'config.php';
                          $user_counts = "SELECT id From users ORDER BY id";
                          $user_counts_run = mysqli_query($conn,$user_counts);
                          
                          $row = mysqli_num_rows($user_counts_run);

                          echo '<h1>'.$row.'</h1>';
                          ?>
                        </span>
                    </div>
                    <div class="box box2">
                        <i class="uil uil-shopping-cart-alt"></i>
                        <span class="text">Products</span>
                        <span class="number">
                          
                        <?php

                          require 'config.php';
                          $product_counts = "SELECT id From product ORDER BY id";
                          $product_counts_run = mysqli_query($conn,$product_counts);
                          
                          $row1 = mysqli_num_rows($product_counts_run);

                          echo '<h1>'.$row1.'</h1>';
                          ?>
                        </span>
                    </div>
                        <div class="box box3">
                            <i class="uil uil-chart-bar-alt"></i>
                                <span class="text">Category</span>
                                    <span class="number">
                                <?php
                                require 'config.php';

                                // Fetch unique categories from the product table
                                $category_query = "SELECT DISTINCT category FROM product";
                                $category_result = mysqli_query($conn, $category_query);
                                
                                $category_count = mysqli_num_rows($category_result);

                                echo '<h1>'.$category_count.'</h1>';
                            ?>
                        </span>
                    </div>
                        <div class="container mt-5">
                            <h2 class="mb-4">Pending User Approvals</h2>
                            <table class="table table-bordered table-hover">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>Email</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php while ($user = mysqli_fetch_assoc($pending_users)): ?>
                                        <tr>
                                            <td><?php echo htmlspecialchars($user['email']); ?></td>
                                            <td>
                                                <a href="approve_user.php?id=<?php echo $user['user_id']; ?>" class="btn btn-success btn-sm">Approve</a>
                                                <a href="decline_user.php?id=<?php echo $user['user_id']; ?>" class="btn btn-danger btn-sm">Decline</a>
                                            </td>
                                        </tr>
                                    <?php endwhile; ?>
                                </tbody>
                            </table>
                        </div>
            </div>
      </section>
    <script src="script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

