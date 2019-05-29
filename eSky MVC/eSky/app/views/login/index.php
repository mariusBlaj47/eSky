<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php echo URL ?>public/css/loginForm.css">
</head>
<body>
<div class="container" data-tab="login">
    <div class="title">
        <h4>Autentificare</h4>
    </div>
    <div class="log_in">
        <form action="<?php echo URL ?>login/checkUser" method="POST" class="login_form">
            <div class="form">
                <br>
                <input id="login_email" name="user" type="text" class="form_input" placeholder="Username" required>
            </div>
            <div class="form">
                <br>
                <input id="login_password" name="pass" type="password" class="form_input" placeholder="Parola" required>
            </div><br>
            <div class="buttons">
                <input type="submit" value="Intra in cont">
            </div>
        </form>
    </div>
</div>
</body>
</html>