<?php

// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
sleep(3);

$fullname = mres($_POST['fullname']);
$email = mres($_POST['email']);
$phone = mres($_POST['phone']);
$subject = mres($_POST['subject']);
$message = mres($_POST['message']);
$recapcha = mres($_POST['g-recaptcha-response']);
$output['status'] = TRUE;

// validations
if (empty($fullname) || empty($email) || empty($phone) || empty($subject) || empty($message)) {
    $output['status'] = FALSE;
    $output['message'] = "Please fill in all the required fields";
} elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $output['status'] = FALSE;
    $output['message'] = "Please add a valid email address";
} elseif (empty($recapcha)) {
    $output['status'] = FALSE;
    $output['message'] = "Please check Recaptcha";
}
if ($output['status']) {
    $temp = "SELECT * FROM tbl_emails WHERE email_type='contact'";
    $exetemp = $conn->query($temp) or die('mysql_error');
    $email_tempplate = $exetemp->fetch_assoc();

    // Setup email to the admin
    $admin_data = array(
        "BASE_URL" => $path,
        "SITE_LOGO" => $path . 'uploads/logo/' . $site_logo,
        "SITE_NAME" => $site_name,
        "SITE_FOOTER" => $site_name,
        "TOP_BANNER" => $path . 'assets/img/illustrations/mailbox.png',
        "MSG_TITLE" => "Dear Admin",
        "MSG_BODY" =>  nl2br($_POST['message'])
    );
    $msg_data = array(
        "Ful Name" => $fullname,
        "Email Address" => $email,
        "Phone Number" => $phone
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

    $domain = trim($email_tempplate['email_to']);
    $emailto = trim($email_tempplate['email_to']);
    $subject = "Contact Us : " . stripslashes($_POST["email"]);
    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html;charset=utf-8\r\n";
    $headers .= "From: No-Reply <noreply@atlanticmarketing>" . "\r\n";
    $headers .= "Reply-To: No-Reply <noreply@atlanticmarketing>" . "\r\n";
    if ($site_driver == "mail") {
        @mail($emailto, $subject, $template, $headers);
        $output['message'] = "Your message has been sent, we will contact you soon";
    } else {

        //Load composer's autoloader

        $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
        try {
            //Server settings
            // $mail->SMTPDebug = 2;                                 // Enable verbose debug output
            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->Host = 'smtp.mailtrap.io:2525';  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = 'cb8cb9f466f91a';                 // SMTP username
            $mail->Password = '5b9c00d39e2d52';                           // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                                    // TCP port to connect to

            //Recipients
            $mail->setFrom('from@example.com');
            $mail->addAddress('to@example.com');     // Add a recipient


            //Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'Here is the subject';
            $mail->Body    = $template;
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            $output['message'] = "Your message has been sent, we will contact you soon";
        } catch (Exception $e) {
            $output['status'] = FALSE;
            $output['message'] = 'Message could not be sent, Please try later.';
        }
    }

    // Setup auto-reply email to the user

    $data = array(
        "BASE_URL" => $path,
        "SITE_LOGO" => $path . 'uploads/logo/' . $site_logo,
        "SITE_NAME" => $site_name,
        "SITE_FOOTER" => $site_name,
        "TOP_BANNER" => $path . 'assets/img/illustrations/contact-us.png',
        "MSG_TITLE" => "Dear " . $fullname,
        "MSG_BODY" => $email_tempplate['email_body'],
    );
    $template = file_get_contents("./inc_pages/widgets/email-templates/send-message.php");
    foreach ($data as $key => $value) {
        $template = str_replace('{{' . $key . '}}', $value, $template);
    }
    $emailto = $email;
    $subject = $email_tempplate['email_subject'];
    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html;charset=utf-8\r\n";
    $headers .= "From: No-Reply <noreply@atlanticmarketing>" . "\r\n";
    $headers .= "Reply-To: No-Reply <noreply@atlanticmarketing>" . "\r\n";

    if ($site_driver == "mail") {
        @mail($emailto, $subject, $template, $headers);
    } else {

        $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
        try {
            //Server settings
            // $mail->SMTPDebug = 2;                                 // Enable verbose debug output
            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->Host = 'smtp.mailtrap.io:2525';  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = 'cb8cb9f466f91a';                 // SMTP username
            $mail->Password = '5b9c00d39e2d52';                           // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                                    // TCP port to connect to

            //Recipients
            $mail->setFrom('from@example.com');
            $mail->addAddress('to@example.com');     // Add a recipient

            //Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'Here is the subject';
            $mail->Body    = $template;
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            $output['message'] = "Your message has been sent, we will contact you soon";
        } catch (Exception $e) {
            $output['status'] = FALSE;
            $output['message'] = 'Message could not be sent, Please try later.';
        }
    }
}

echo json_encode($output);
exit;
