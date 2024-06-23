<?php
require_once('includes/load.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $req_fields = array('fullname', 'username', 'password');
    validate_fields($req_fields);

    $fullname = remove_junk($_POST['fullname']);
    $username = remove_junk($_POST['username']);
    $password = remove_junk($_POST['password']);

    if (empty($errors)) {
        if (register_user($fullname, $username, $password)) {
            $session->msg("s", "Account created successfully.");
            redirect('index.php', false);
        } else {
            $session->msg("d", "Sorry, registration failed.");
            redirect('register.php', false);
        }
    } else {
        $session->msg("d", $errors);
        redirect('register.php', false);
    }
} else {
    redirect('register.php', false);
}
