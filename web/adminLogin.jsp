<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Hospital Management System</title>
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
        <script
        src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script
        src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/register.css" type="text/css" />
    </head>
    <style type="text/css">
        body {
            background-image: url("img/Medical.jpg");
            background-color: #cccccc;
        }

        .img-rounded {
            height: 100%;
            width: 100%;
        }

        h1 {
            color: white;
            text-align: center;
        }
    </style>
    <body>
        <nav class="navbar navbar-expand-md navbar-light bg-light">
            <a href="#" class="navbar-brand"> <img src="img/2855.jpeg"
                                                   height="30" width="100" alt="HospitalManagementSystem">
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse"
                    data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ml-auto" style="margin-right: 30px;">
                    <a class="dropdown-item" href="index.jsp">Home</a>
                    <a class="dropdown-item" href="adminLogin.jsp">Admin</a>
                </div>
            </div>
        </nav>
        <div>
            <h1>
                <b>Hospital Management System</b>
            </h1>
        </div>
        <!-- Sing in  Form -->
        <form action="<%=request.getContextPath()%>/AdminLogin" method="post">
            <section class="sign-in">
                <div class="container">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure><img src="img/signin-image.jpg" alt="sing up image"></figure>
                            <a href="adminRegister.jsp" class="signup-image-link">Create an account</a>
                        </div>

                        <div class="signin-form">
                            <h2 class="form-title">Sign in</h2>
                            <form method="POST" class="register-form" id="login-form">
                                <div class="form-group">
                                    <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="your_name" id="your_name" placeholder="User Name"/>
                                </div>
                                <div class="form-group">
                                    <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                    <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </body>
</html>