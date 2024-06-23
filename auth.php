<?php include_once('includes/load.php'); ?>
<?php
$req_fields = array('username', 'password');
validate_fields($req_fields);
$username = remove_junk($_POST['username']);
$password = remove_junk($_POST['password']);

if (empty($errors)) {
  $admin_user_id = authenticate($username, $password);
  if ($admin_user_id) {
    //create session with id
    $session->login($admin_user_id);
    //Update Sign in time
    updateLastLogIn($admin_user_id);
    $session->msg("s", "Welcome to J PICHON HARDWARE");
    redirect('admin.php', false);
  } else {
    $session->msg("d", "Sorry Username/Password incorrect.");
    redirect('index.php', false);
  }
} else {
  $session->msg("d", $errors);
  redirect('index.php', false);
}

?>
