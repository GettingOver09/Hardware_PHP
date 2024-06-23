<?php
$page_title = 'Add Sale';
require_once('includes/load.php');
// Checkin What level user has permission to view this page
page_require_level(3);
?>
<?php


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $req_fields = array('p_id', 'quantity');
    validate_fields($req_fields);

    if (empty($errors)) {
        $p_id      = $db->escape((int)$_POST['p_id']);
        $quantity  = $db->escape((int)$_POST['quantity']);

        $sql  = "UPDATE products SET ";
        $sql .= "quantity = quantity + '{$quantity}' ";
        $sql .= "WHERE id = '{$p_id}'";

        if ($db->query($sql)) {
            $session->msg('s', "Quantity added successfully.");
            // redirect('add_quantity.php', false);
        } else {
            $session->msg('d', 'Sorry, failed to add quantity.');
            // redirect('add_quantity.php', false);
        }
    } else {
        $session->msg("d", $errors);
        // redirect('add_quantity.php', false);
    }
}
?>

<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
    <form method="post" action="ajax.php" autocomplete="off" id="sug2-form">
      <div class="form-group">
        <div class="input-group">
          <span class="input-group-btn">
            <button type="submit" class="btn btn-primary">Find It</button>
          </span>
          <input type="text" id="sug_input" class="form-control" name="title" placeholder="Search for product name">
        </div>
        <div id="result" class="list-group"></div>
      </div>
    </form>
  </div>
</div>
<div class="row">

  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading clearfix">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>Stock In</span>
        </strong>
      </div>
      <div class="panel-body">
        <form>
          <table class="table table-bordered">
            <thead>
              <th> Item </th>
              <th> Price </th>
              <th> Qty </th>
              <th> Total </th>
              <th> Date</th>
              <th> Action</th>
            </thead>
            <tbody id="product_info"> </tbody>
          </table>
        </form>
      </div>
    </div>
  </div>

</div>

<?php include_once('layouts/footer.php'); ?>