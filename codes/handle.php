<?php
$setting = array(
  "website_name"      =>  $site_name,
  "url"               =>  $path,
  "sandbox"           =>  true,
  "sandbox_paypal"    =>  "syedkamran1988-facilitator@yahoo.com",
  "live_paypal"       =>  "syedkamran1988@yahoo.com"
);

$raw_post_data = file_get_contents('php://input');
$raw_post_array = explode('&', $raw_post_data);
$myPost = array();
foreach ($raw_post_array as $keyval) {
  $keyval = explode('=', $keyval);
  if (count($keyval) == 2)
    $myPost[$keyval[0]] = urldecode($keyval[1]);
}

$req = 'cmd=_notify-validate';
if (function_exists('get_magic_quotes_gpc')) {
  $get_magic_quotes_exists = true;
}
foreach ($myPost as $key => $value) {
  if ($get_magic_quotes_exists == true && get_magic_quotes_gpc() == 1) {
    $value = urlencode(stripslashes($value));
  } else {
    $value = urlencode($value);
  }
  $req .= "&$key=$value";
}

if ($setting['sandbox'] == true) :
  $ppurl = 'https://www.sandbox.paypal.com/cgi-bin/webscr';
else :
  $ppurl = 'https://www.paypal.com/cgi-bin/webscr';
endif;

$ch = curl_init($ppurl);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $req);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt($ch, CURLOPT_FORBID_REUSE, 1);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Connection: Close'));

if (!($res = curl_exec($ch))) {
  error_log("Got " . curl_error($ch) . " when processing IPN data");
  curl_close($ch);
  exit;
}
curl_close($ch);

$resArray = $_POST;
if (strcmp($res, "VERIFIED") == 0) {
  $filename = 'VERIFIED (' . date('Y-m-d-His') . ')';
  $resArray['Status'] = 'VERIFIED';
  $custom = $resArray['custom'];

  $paging =  "SELECT * FROM tbl_orders WHERE order_code=$custom";
  $exe = $conn->query($paging) or die(mysqli_error($conn));
  $row = $exe->fetch_assoc();
  $get_data = unserialize(stripslashes($row['order_data']));
  $id = $row['order_id'];
  $vals['order_status'] = '1';
  updateRecord("tbl_orders", $vals, " `order_id` = '" . $id . "' ");


  // Email Sending Procedure


  // $fullname = mres($_POST['fullname']);
  // $email = mres($_POST['email']);
  // $phone_no = mres($_POST['phone_no']);
  // $subject = mres($_POST['subject']);
  // $message = mres($_POST['message']);

  $output['status'] = TRUE;

  if ($output['status']) {
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
    $headers .= "Reply-To: No-Reply <reply@$email>" . "\r\n";

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
    $emailto = $get_data['email'];
    $subject = $email_tempplate['email_subject'];
    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html;charset=utf-8\r\n";
    $headers .= "From: No-Reply <noreply@fusionmax>" . "\r\n";
    $headers .= "Reply-To: No-Reply <noreply@fusionmax>" . "\r\n";

    @mail($emailto, $subject, $template, $headers);
    // $output['message'] = "Your message has been sent, we will contact you soon";
  }

  // echo json_encode($output);
  // Email Sending procedure end


}
