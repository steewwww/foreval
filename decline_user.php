<?php
session_start();
include('config.php');

if(isset($_GET['id'])) {
    $user_id = $_GET['id'];
    $query = "DELETE FROM users WHERE user_id = '$user_id'";
    mysqli_query($conn, $query);
    header("Location: adminpanel.php");
    die;
}
?>