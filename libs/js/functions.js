function suggestion() {
    $('#sug_input').keyup(function (e) {
        var formData = {
            'product_name': $('input[name=title]').val()
        };

        if (formData['product_name'].length >= 1) {
            // process the form
            $.ajax({
                type: 'POST',
                url: 'ajax.php',
                data: formData,
                dataType: 'json',
                encode: true
            })
                .done(function (data) {
                    $('#result').html(data).fadeIn();
                    $('#result li').click(function () {
                        $('#sug_input').val($(this).text());
                        $('#result').fadeOut(500);
                    });

                    $("#sug_input").blur(function () {
                        $("#result").fadeOut(500);
                    });
                });
        } else {
            $("#result").hide();
        }

        e.preventDefault();
    });
}

// ADD SALE AJAX

// Inside the submit handler for the product name form
$('#sug-form').submit(function (e) {
    e.preventDefault();

    var formData = {
        'p_name': $('input[name=title]').val()
    };

    $.ajax({
        type: 'POST',
        url: 'ajax.php',
        data: formData,
        dataType: 'json',
        encode: true
    })
        .done(function (data) {
            $('#product_info').append(data).show();
            total();
            $('.datePicker').datepicker('update', new Date());

            // Add a class or data attribute to indicate that this product has been added
            // For example, you can add 'data-added="true"' to the product row
            $('.product-row[data-product-id="' + result['id'] + '"]').attr('data-added', 'true');
        })
        .fail(function () {
            $('#product_info').append(data).show();
        });
});


// STOCK IN AJAX

// Inside the submit handler for the product name form
$('#sug2-form').submit(function (e) {
    e.preventDefault();

    var formData = {
        'p_name': $('input[name=title]').val()
    };

    $.ajax({
        type: 'POST',
        url: 'ajax2.php',
        data: formData,
        dataType: 'json',
        encode: true
    })
        .done(function (data) {
            $('#product_info').append(data).show();
            total();
            $('.datePicker').datepicker('update', new Date());

            // Add a class or data attribute to indicate that this product has been added
            // For example, you can add 'data-added="true"' to the product row
            $('.product-row[data-product-id="' + result['id'] + '"]').attr('data-added', 'true');
        })
        .fail(function () {
            $('#product_info').append(data).show();
        });
});


// STOCK OUT AJAX

// Inside the submit handler for the product name form
$('#sug3-form').submit(function (e) {
    e.preventDefault();

    var formData = {
        'p_name': $('input[name=title]').val()
    };

    $.ajax({
        type: 'POST',
        url: 'ajax3.php',
        data: formData,
        dataType: 'json',
        encode: true
    })
        .done(function (data) {
            $('#product_info').append(data).show();
            total();
            $('.datePicker').datepicker('update', new Date());

            // Add a class or data attribute to indicate that this product has been added
            // For example, you can add 'data-added="true"' to the product row
            $('.product-row[data-product-id="' + result['id'] + '"]').attr('data-added', 'true');
        })
        .fail(function () {
            $('#product_info').append(data).show();
        });
});



// FOR STOCK IN

function addQuantity(button) {
    // Get the closest table row from the clicked button
    var $row = $(button).closest('tr');

    // Get the values from input fields within the same row using 'name' attributes
    var productId = $row.find('input[name="s_id"]').val();
    var quantityToAdd = $row.find('input[name="quantity"]').val(); // Assuming the input field has name="quantity_to_add"

    // Create a data object to send as JSON
    var formData = {
        'p_id': productId,
        'quantity': quantityToAdd
    };

    // Convert the formData object to a JSON string for display
    var formDataString = JSON.stringify(formData);

    // Make an AJAX request to add the quantity
    $.ajax({
        type: 'POST',
        url: 'stock-in.php', // Adjust the URL according to your actual file
        data: formData,
        dataType: 'json',
        encode: true
    })
        // Display the formData in the console
        .done(function (data) {
            // Handle the response from the server (e.g., display a success message)
            alert('Quantity added successfully!');
            // Optionally, you can update the product list or perform other actions
        })
        .fail(function () {
            // Handle any errors that occur during the AJAX request
            // alert('Failed to add quantity.');
        });
}


// FOR STOCK OUT

function stockOut(button) {

    // Get the closest table row from the clicked button
    var $row = $(button).closest('tr');

    // Get the values from input fields within the same row using 'name' attributes
    var productId = $row.find('input[name="s_id"]').val();
    var productName = $row.find('input[name="name"]').val();
    var salePrice = $row.find('input[name="price"]').val();
    var quantity = $row.find('input[name="quantity"]').val();
    var total = $row.find('input[name="total"]').val();
    var date = $row.find('input[name="date"]').val();

    // Create a data object to send as JSON
    var formData = {
        's_id': productId,
        'name': productName,
        'price': salePrice,
        'quantity': quantity,
        'total': total,
        'date': date
    };

    // Convert the formData object to a JSON string for display
    var formDataString = JSON.stringify(formData);

    // ? Alert the product information
    // alert(formDataString);

    // Make an AJAX request to add the sale
    $.ajax({
        type: 'POST',
        url: 'stock-out.php',
        data: formData,
        dataType: 'json',
        encode: true
    })
        // Display the formData in the console
        .done(function (data) {
            // Handle the response from the server (e.g., display a success message)

            // Optionally, you can update the product list with the newly added sale
            $('#product_info').append(data).show();
            total();
            $('.datePicker').datepicker('update', new Date());
        })
        .fail(function () {
            // Handle any errors that occur during the AJAX request
        });
}






function addSale(button) {

    // Get the closest table row from the clicked button
    var $row = $(button).closest('tr');

    // Get the values from input fields within the same row using 'name' attributes
    var productId = $row.find('input[name="s_id"]').val();
    var productName = $row.find('input[name="name"]').val();
    var salePrice = $row.find('input[name="price"]').val();
    var quantity = $row.find('input[name="quantity"]').val();
    var total = $row.find('input[name="total"]').val();
    var date = $row.find('input[name="date"]').val();

    // Create a data object to send as JSON
    var formData = {
        's_id': productId,
        'name': productName,
        'price': salePrice,
        'quantity': quantity,
        'total': total,
        'date': date
    };

    // Convert the formData object to a JSON string for display
    var formDataString = JSON.stringify(formData);

    // ? Alert the product information
    // alert(formDataString);

    // Make an AJAX request to add the sale
    $.ajax({
        type: 'POST',
        url: 'add_sale.php',
        data: formData,
        dataType: 'json',
        encode: true
    })
        // Display the formData in the console
        .done(function (data) {
            // Handle the response from the server (e.g., display a success message)

            // Optionally, you can update the product list with the newly added sale
            $('#product_info').append(data).show();
            total();
            $('.datePicker').datepicker('update', new Date());
        })
        .fail(function () {
            // Handle any errors that occur during the AJAX request
        });
}




function total() {
    $('#product_info input[name=quantity], #product_info input[name=price]').change(function (e) {
        var $row = $(this).closest('tr'); // Get the current row
        var price = +$row.find('input[name=price]').val() || 0;
        var qty = +$row.find('input[name=quantity]').val() || 0;
        var total = qty * price;
        $row.find('input[name=total]').val(total.toFixed(2));
    });
}


$(document).ready(function () {
    //tooltip
    $('[data-toggle="tooltip"]').tooltip();

    $('.submenu-toggle').click(function () {
        $(this).parent().children('ul.submenu').toggle(200);
    });

    //suggestion for finding product names
    suggestion();

    // Callculate total amount
    total();

    $('.datepicker')
        .datepicker({
            format: 'yyyy-mm-dd',
            todayHighlight: true,
            autoclose: true
        });

    $('#product_info').on('click', 'button[name=add_sale]', function () {
        // Find the closest table row (tr) to the clicked button
        var productRow = $(this).closest('tr');

        // Remove the found row from the table
        productRow.remove();
    });

});
