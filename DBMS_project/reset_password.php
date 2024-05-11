<?php

require 'controllerUserData.php';  // Your database connection

if (isset($_GET['token']) && isset($_GET['email'])) {
    $token = $_GET['token'];
    $email = $_GET['email'];

    if (isset($_POST['change-password'])) {
        $password = mysqli_real_escape_string($con, $_POST['password']);
        $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);

        if ($password !== $cpassword) {
            $errors['password'] = "Confirm password not matched!";
        } else {
            $encpass = password_hash($password, PASSWORD_BCRYPT);
            $update_pass = "UPDATE usertable SET code = 0, password = '$encpass' WHERE email = '$email' AND code = $token";
            $run_query = mysqli_query($con, $update_pass);
            if ($run_query) {
                $_SESSION['info'] = "Your password has been changed successfully. You can now login with your new password.";
                header('Location: login.php');
                exit();
            } else {
                $errors['db-error'] = "Failed to change your password!";
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="controllerUserData.php" method="POST">
    <input type="password" name="password" placeholder="Enter new password" required>
    <input type="password" name="cpassword" placeholder="Confirm new password" required>
    <button type="submit" name="change-password">Change Password</button>
</form>
</body>
</html>

