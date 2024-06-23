<?php
ob_start();
require_once('includes/load.php');
if ($session->isUserLoggedIn(true)) {
  redirect('home.php', false);
}
?>
<?php include_once('layouts/header.php'); ?>
<div class="login-page">
  <div class="text-center">
    <h1>Login Panel</h1>
    <h4>J PICHON HARDWARE</h4>
  </div>
  <?php echo display_msg($msg); ?>

  <form method="post" action="auth.php" class="clearfix">
    <div class="form-group">
      <label for="username" class="control-label">Username</label>
      <input type="name" class="form-control" name="username" placeholder="Username">
    </div>
    <div class="form-group">
      <label for="Password" class="control-label">Password</label>
      <input type="password" name="password" class="form-control" placeholder="Password">
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-danger" style="border-radius:0%">Login</button>
    </div>
  </form>
  <div class="form-group">
    <a href="register.php" class="btn btn-primary" style="border-radius:0%">Register</a>
  </div>

</div>
<?php include_once('layouts/footer.php'); ?>