<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Hospital Management System</title>
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
        <link rel="stylesheet" href="css/style.css" type="text/css" />
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
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Admin
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="adminRegister.jsp">Register</a>
                            <a class="dropdown-item" href="adminLogin.jsp">Login</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        
                    </li>
                </div>
            </div>
        </nav>
        <div>
            <h1>
                <b>Hospital Management System</b>
            </h1>
        </div>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->
                <h2>User Login</h2>
                <!-- Icon -->
                <div class="fadeIn first">

                </div>

                <!-- Login Form -->
                <form action="<%=request.getContextPath()%>/UserRegister" method="post">
                    <input type="text" id="Username" class="fadeIn second" name="Username"
                           placeholder="Enter Username"> 
                    <input type="password" id="password"
                           class="fadeIn third" name="password" placeholder="Enter Password"> 
                    <input type="password" id="password"
                           class="fadeIn third" name="repassword" placeholder="Enter Password Again"> 
                    <input
                        type="submit" class="fadeIn fourth" value="Log In">
                </form>

                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a class="underlineHover" href="index.jsp">Log in</a>
                </div>

            </div>
        </div>
    </body>
</html>