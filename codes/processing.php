<?php

if (isset($_POST['payment_method']) && $_POST['payment_method'] == 'stripe') {

    $fullname = mres($_POST['fullname']);
    $email = mres($_POST['email']);
    $phone_no = mres($_POST['phone_no']);
    $pkg_code = mres($_POST['pkg_code']);
    $price = mres($_POST['pkg_price']);
    $pkg_title = mres($_POST['pkg_title']);
    $encode_id = mres($_POST['encode_id']);
    // echo $price;
    // exit;
    // $id = $_REQUEST['code'];
    // $pkgqry =  "SELECT * FROM tbl_pricing WHERE pri_id=$id";
    // $pkgexe = $conn->query($pkgqry) or die(mysqli_error($conn));
    // $pkg = $pkgexe->fetch_assoc();
    // $pkg_code = random_int(1000, 9999);
    $setting = array(
        "website_name" => $site_name,
        "url" => $path,                         // set your website url here
        "notify_url" => $path,        // set url where paypal will send response
        "return_url" => $path . "pricing-list",                  // set url where user will return from paypal
        "cancel_url" => $path,                  // set url where user will return after canceling payment
        "sandbox" => true,                                          // For testing set true and for live set false
        "sandbox_paypal" => "sb-spxu66925654@business.example.com", // set your paypal test email here
        "live_paypal" => "fusionmaxcarwash@gmail.com"                 // set your live email here
    );
    // For Sandbox Paypal Payment Use
    // Email   : syedkamran1988-buyer@yahoo.com
    // Password: kamran1988
    $pkg_array = array(
        "pkg_title" => $pkg_title,
        "currency" => "USD",
        "pkg_price" => $price,
        "email" => $email,
        "phone_no" => $phone_no,
        "fullname" => $fullname,
    );
    $post = array(
        "item_name" => $pkg_title,  //  Item name that will be displayed in paypal page
        "currency" => "USD",        //  payment currency
        "amount" => $price,            //  payment amount
        "custom" => $pkg_code,       //  your customer or order id (You will receive this in response after successfull payment.)
    );
    /////////////////////////////////////////


    $api_secret_key = 'sk_test_51JEe8PDh1ruFgvzjMvQzbwR23YFnFBAlJCd35KPObRbfhwSsorwX8dJgOlOaO4eCef1x2qHPoKHEuxevt5uq9qHR00tRItXR11';

    require 'vendor/stripe/init.php';

    if (floatval($post['amount']) > 0) {

        \Stripe\Stripe::setApiKey($api_secret_key);
        try {
            if (!isset($_POST['stripeToken']))
                throw new Exception("The Stripe Token was not generated correctly");

            $amount = floatval($post['amount']);
            $cents = floatval($amount * 100); //converting to cents

            $response = \Stripe\Charge::create(array(
                "amount" => $cents,
                "currency" => $post['currency'],
                "card" => $_POST['stripeToken']
            ));
            // echo "yes";
            // $transaction_id = $response->id; // Its unique charge ID
            // $transaction_txn_id = $response->balance_transaction; // Its unique transaction ID
            // $transaction_status = $response->status;
            // echo 'success: payment completed..!';
            // echo '<pre>';
            // print_r($_POST);  // Print post you will see more information
            // print_r($response);  // Print this json response you will see more information if you need
            // echo '</pre>';
            // exit;
            $formvals = serialize($_POST);
            $s1_max_orderid = "select max(order_order) as orderid from tbl_orders where 1 ";
            $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
            $r1_max_orderid = $q1_max_orderid->fetch_array();
            $new_vals['order_order'] = intval($r1_max_orderid["orderid"]) + 1;
            $new_vals['order_data'] = serialize($pkg_array);
            $new_vals['order_status'] = '1';
            $new_vals['order_code'] = $post['custom'];
            saveRecord("tbl_orders", $new_vals);
            // Email Sending Procedure

            $temp = "SELECT * FROM tbl_emails WHERE email_type='order'";
            $exetemp = $conn->query($temp) or die('mysql_error');
            $email_tempplate = $exetemp->fetch_assoc();

            // Setup email to the admin
            $admin_data = array(
                "BASE_URL" => $path,
                "SITE_LOGO" => $path . 'uploads/logo/' . $site_logo,
                "SITE_NAME" => $site_name,
                "SITE_FOOTER" => $site_name,
                "TOP_BANNER" => $path . 'assets/images/illustrations/mailbox.png',
                "MSG_TITLE" => "Dear Admin",
                "MSG_BODY" =>  nl2br($_POST['message'])
            );
            $msg_data = array(
                "Pakage Name" => $pkg_title,
                "Email Address" => $email_tempplate['email_to'],
                "Mesasge" => "Admin You have a new order!"
            );
            $msg_body = '<table width="100%" style="margin-top:2rem;" border="0" cellspacing="0" cellpadding="0">
                  <tr><th align="left"><u>Message Details</u><th></tr>';
            foreach ($msg_data as $key => $value) {
                $msg_body .= '<tr>
                          <th width="30%" style="text-align: left;vertical-align: top;padding: 4px 0px;">' . $key . '</th>
                          <td>' . $value . '</td>
                      </tr>';
            }
            $msg_body .= "</table>";
            $admin_data['DATA'] = $msg_body;
            $template = file_get_contents("./inc_pages/widgets/email-templates/admin-send-message.php");
            foreach ($admin_data as $key => $value) {
                $template = str_replace('{{' . $key . '}}', $value, $template);
            }

            $emailto = trim($email_tempplate['email_to']);
            $subject = "Subject : New Order";
            $headers = "MIME-Version: 1.0\r\n";
            $headers .= "Content-type: text/html;charset=utf-8\r\n";
            $headers .= "From: No-Reply <noreply@$email>" . "\r\n";
            $headers .= "Reply-To: No-Reply <noreply@$email>" . "\r\n";

            @mail($emailto, $subject, $template, $headers);

            // Setup auto-reply email to the user
            $data = array(
                "BASE_URL" => $path,
                "SITE_LOGO" => $path . 'uploads/logo/' . $site_logo,
                "SITE_NAME" => $site_name,
                "SITE_FOOTER" => $site_name,
                "TOP_BANNER" => $path . 'assets/images/illustrations/contact-us.png',
                "MSG_TITLE" => "Dear " . $fullname,
                "MSG_BODY" => $email_tempplate['email_body'],
            );
            $template = file_get_contents("./inc_pages/widgets/email-templates/send-message.php");
            foreach ($data as $key => $value) {
                $template = str_replace('{{' . $key . '}}', $value, $template);
            }
            $emailto = $email; //$get_data['email'];
            $subject = $email_tempplate['email_subject'];
            $headers = "MIME-Version: 1.0\r\n";
            $headers .= "Content-type: text/html;charset=utf-8\r\n";
            $headers .= "From: No-Reply <noreply@fusionmax>" . "\r\n";
            $headers .= "Reply-To: No-Reply <noreply@fusionmax>" . "\r\n";

            @mail($emailto, $subject, $template, $headers);
            // $output['message'] = "Your message has been sent, we will contact you soon";

            $_SESSION['successMsg'] = 'success: payment completed..!';
            redirectTo('success');
        } catch (Exception $e) {
            $error = $e->getMessage();
            $_SESSION['errorMsg'] = 'Error: ' . $error;
            redirectTo('booking/' . $encode_id);
        }
    }
} else {

    $status = TRUE;
    $fullname = mres($_POST['fullname']);
    $email = mres($_POST['email']);
    $phone_no = mres($_POST['phone_no']);
    $pkg_code = mres($_POST['pkg_code']);
    $price = mres($_POST['pkg_price']);
    $pkg_title = mres($_POST['pkg_title']);
    $encode_id = mres($_POST['encode_id']);
    if (empty($fullname) || empty($email) || empty($phone_no)) {
        $status = FALSE;
        $_SESSION['errorMsg'] = 'Please Enter Name, Email Address And Phone Number To continue!';
        redirectTo('booking/' . $encode_id);
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $status = FALSE;
        $_SESSION['errorMsg'] = 'Please Add A Valid Email Address To Continue!';
        redirectTo('booking/' . $encode_id);
    }
    // $id = $_REQUEST['code'];
    // $pkgqry =  "SELECT * FROM tbl_pricing WHERE pri_id=$id";
    // $pkgexe = $conn->query($pkgqry) or die(mysqli_error($conn));
    // $pkg = $pkgexe->fetch_assoc();
    // $pkg_code = random_int(1000, 9999);
    $setting = array(
        "website_name" => $site_name,
        "url" => $path . "",                         // set your website url here
        "notify_url" => $path . "handle",        // set url where paypal will send response
        "return_url" => $path . "success",                  // set url where user will return from paypal
        "cancel_url" => $path . "",                  // set url where user will return after canceling payment
        "sandbox" => true,                                          // For testing set true and for live set false
        "sandbox_paypal" => "sb-spxu66925654@business.example.com", // set your paypal test email here
        "live_paypal" => "fusionmaxcarwash@gmail.com"                 // set your live email here
    );
    // For Sandbox Paypal Payment Use
    // Email   : syedkamran1988-buyer@yahoo.com
    // Password: kamran1988
    $pkg_array = array(
        "pkg_title" => $pkg_title,
        "currency" => "USD",
        "pkg_price" => $price,
        "email" => $email,
        "phone_no" => $phone_no,
        "fullname" => $fullname,
    );
    $post = array(
        "item_name" => $pkg_title,  //  Item name that will be displayed in paypal page
        "currency" => "USD",        //  payment currency
        "amount" => $price,            //  payment amount
        "custom" => $pkg_code,       //  your customer or order id (You will receive this in response after successfull payment.)
    );
    /////////////////////////////////////////
    if ($status) {
        $formvals = serialize($_POST);
        $s1_max_orderid = "select max(order_order) as orderid from tbl_orders where 1 ";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $new_vals['order_order'] = intval($r1_max_orderid["orderid"]) + 1;
        $new_vals['order_data'] = serialize($pkg_array);
        $new_vals['order_status'] = '0';
        $new_vals['order_code'] = $post['custom'];
        saveRecord("tbl_orders", $new_vals);
    }
    // $_SESSION['successMsg'] = 'Order has been Placed successfully !';

    ////////////////////////////////////////
    if (!empty($setting['live_paypal']) && !empty($post['item_name']) && !empty($post['amount']) && !empty($post['custom'])) {
?>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>Redirecting to Paypal...</title>
        </head>

        <body onLoad="document.getElementById('frmpay').submit()">
            <center>Redirecting to Paypal...</center>
            <?php if ($setting['sandbox'] == true) : ?>
                <form name="frmpay" id="frmpay" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
                <?php else : ?>
                    <form name="frmpay" id="frmpay" action="https://www.paypal.com/cgi-bin/webscr" method="post">
                    <?php endif; ?>
                    <input type="hidden" name="cmd" value="_xclick">
                    <?php if ($setting['sandbox'] == true) : ?>
                        <input type="hidden" name="business" value="<?php echo trim($setting['sandbox_paypal']); ?>">
                    <?php else : ?>
                        <input type="hidden" name="business" value="<?php echo trim($setting['live_paypal']); ?>">
                    <?php endif; ?>
                    <input type="hidden" name="item_name" value="<?php echo $post['item_name']; ?>">
                    <input type="hidden" name="currency_code" value="<?php echo $post['currency']; ?>">
                    <input type="hidden" name="amount" value="<?php echo floatval($post['amount']); ?>">
                    <input type="hidden" name="custom" value="<?php echo $post['custom']; ?>">
                    <input type="hidden" name="notify_url" value="<?php echo $setting['notify_url']; ?>">
                    <input type="hidden" name="cancel_return" value="<?php echo $setting['cancel_url']; ?>">
                    <input type="hidden" name="return" value="<?php echo $setting['return_url']; ?>">
                    </form>
                    <script type="text/javascript">
                        document.getElementById('frmpay').submit();
                    </script>
        </body>

        </html>
    <?php
    } else {
    ?>
        <script type="text/javascript">
            document.location = '<?php echo $setting['url']; ?>';
        </script>
<?php
    }
}
