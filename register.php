<?php
ob_start();
require_once('includes/load.php');
?>
<?php include_once('layouts/header.php'); ?>
<div class="login-page">
    <div class="text-center">
        <h1>Register Panel</h1>
        <h4>J PICHON HARDWARE</h4>
    </div>
    <?php echo display_msg($msg); ?>

    <form method="post" action="register_handler.php" class="clearfix">
        <div class="form-group">
            <label for="fullname" class="control-label">Full Name</label>
            <input type="text" class="form-control" name="fullname" placeholder="Full Name" require>
        </div>
        <div class="form-group">
            <label for="username" class="control-label">Username</label>
            <input type="text" class="form-control" name="username" placeholder="Username" require>
        </div>
        <div class="form-group">
            <label for="password" class="control-label">Password</label>
            <input type="password" name="password" class="form-control" placeholder="Password" require>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary" style="border-radius:0%">Register</button>
        </div>
    </form>
    <a href="index.php">Already have an account? login here</a>
</div>
<?php include_once('layouts/footer.php'); ?>