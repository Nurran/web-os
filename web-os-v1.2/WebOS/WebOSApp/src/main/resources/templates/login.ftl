<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

  <meta name="description" content="WebOs Login">
  <meta name="keywords" content="WebOs">
  <!--<link rel='Shortcut Icon' type='image/x-icon' href='static/img/windows.ico'>-->
  <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-all.min.css">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
  <title>WebOs 登录</title>

  <style>
    .login-form {
      width: 350px;
      height: auto;
      top: 50%;
      margin-top: -160px;
    }
  </style>
</head>
<body class="h-vh-100 bg-brandColor2">

<form class="login-form bg-white p-6 mx-auto border bd-default win-shadow"
      data-role="validator"
      method="post"
      action="/j_spring_security_check"
      data-clear-invalid="2000"
      data-on-error-form="invalidForm"
      data-on-validate-form="validateForm">
  <span class="mif-vpn-lock mif-4x place-right" style="margin-top: -10px;"></span>
  <h2 class="text-light">Web OS 登录</h2>
  <hr class="thin mt-4 mb-4 bg-white">
  <div class="form-group">
    <input type="text" data-role="input" name="j_username" data-prepend="<span class='mif-envelop'>" placeholder="Enter your email..."
           data-validate="required email" autocomplete="off">
  </div>
  <div class="form-group">
    <input type="password" data-role="input" name="j_password" data-prepend="<span class='mif-key'>" placeholder="Enter your password..."
           data-validate="required minlength=6">
  </div>
  <div class="form-group mt-10">
    <input type="checkbox" disabled data-role="checkbox" data-caption="Remember me" class="place-right">
    <button class="button">Login</button>
  </div>
</form>

<script>
  function invalidForm() {
    var form = $(this);
    form.addClass("ani-ring");
    setTimeout(function () {
      form.removeClass("ani-ring");
    }, 1000);
  }
  function validateForm() {
    $(".login-form").animate({
      opacity: 0
    });
  }
</script>

</body>
</html>
