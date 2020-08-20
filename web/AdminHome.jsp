<%-- 
    Document   : UserHome
    Created on : 13 Aug, 2020, 9:56:36 AM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
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

        <style>
            body {
                background-image: url("img/Medical.jpg");
                background-color: #cccccc;
                height: 100%;
            }
            body.modal-open {
                padding-right: 0 !important;
            }

            #sidebar {
                padding-left: 0;
            }
            /*
         * Off Canvas at medium breakpoint
         * --------------------------------------------------
         */

            @media screen and (max-width: 48em) {
                .row-offcanvas {
                    position: relative;
                    -webkit-transition: all 0.25s ease-out;
                    -moz-transition: all 0.25s ease-out;
                    transition: all 0.25s ease-out;
                }
                .row-offcanvas-left .sidebar-offcanvas {
                    left: -33%;
                }
                .row-offcanvas-left.active {
                    left: 33%;
                    margin-left: -6px;
                }
                .sidebar-offcanvas {
                    position: absolute;
                    top: 0;
                    width: 33%;
                    height: 100%;
                }
            }
            /*
         * Off Canvas wider at sm breakpoint
         * --------------------------------------------------
         */

            @media screen and (max-width: 34em) {
                .row-offcanvas-left .sidebar-offcanvas {
                    left: -45%;
                }
                .row-offcanvas-left.active {
                    left: 45%;
                    margin-left: -6px;
                }
                .sidebar-offcanvas {
                    width: 45%;
                }
            }

            .card {
                overflow: hidden;
            }

            .card-block .rotate {
                z-index: 8;
                float: right;
                height: 100%;
            }

            .card-block .rotate i {
                color: rgba(20, 20, 20, 0.15);
                position: absolute;
                left: 0;
                left: auto;
                right: -10px;
                bottom: 0;
                display: block;
                -webkit-transform: rotate(-44deg);
                -moz-transform: rotate(-44deg);
                -o-transform: rotate(-44deg);
                -ms-transform: rotate(-44deg);
                transform: rotate(-44deg);
            }
            a{
                color: white;
                
            }
        </style>
    </head>
    <body>
        <%
            Connection con = null;
        %>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand"> <img src="img/2855.jpeg"
                                                   height="30" width="100" alt="HospitalManagementSystem">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <h3>
                    <b>Hospital Management System</b>
                </h3>
                <ul class="navbar-nav ml-auto" style="margin-right: 70px;">

                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            PATIENT
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addpatient.jsp">Add Patient</a>
                            <a class="dropdown-item" href="adminPatientList.jsp">Patient List</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            DOCTOR
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addDoctor.jsp">Add Doctor</a>
                            <a class="dropdown-item" href="adminDoctorList.jsp">View Doctor</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            RECEPTIONIST
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addRecp.jsp">Add Receptionist</a>
                            <a class="dropdown-item" href="adminRecpList.jsp">View Receptionist</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            WORKER
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addWorker.jsp">Add Worker</a>
                            <a class="dropdown-item" href="adminWorkerList.jsp">View Worker</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <%
            try {
                con = DatabaseConnection.initializeDatabase();
                Statement st = (Statement) con.createStatement();
                String query = "select count(*) from patient";
                ResultSet rs = st.executeQuery(query);
                while (rs.next()) {
                    int patient = rs.getInt(1);
        %>

        <div class="row mb-3">
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px; ">
                <div class="card card-inverse card-success">
                    <div class="card-block bg-success">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center; "><a href="adminPatientList.jsp">Patient</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= patient%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from doctor";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int doctor = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-danger">
                    <div class="card-block bg-danger">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminDoctorList.jsp">Doctor</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= doctor%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from recp";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int recp = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-info">
                    <div class="card-block bg-info">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminRecpList.jsp">Receptionist</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= recp%></h1>
                    </div>
                </div>
            </div>
            <%
                    }
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                try {
                    con = DatabaseConnection.initializeDatabase();
                    Statement st = (Statement) con.createStatement();
                    String query = "select count(*) from worker";
                    ResultSet rs = st.executeQuery(query);
                    while (rs.next()) {
                        int worker = rs.getInt(1);
            %>
            <div class="col-xl-3 col-lg-6" style="margin-top: 20px;">
                <div class="card card-inverse card-warning">
                    <div class="card-block bg-warning">
                        <div class="rotate">
                            <i class="fa fa-user fa-5x"></i>
                        </div>
                        <h6 class="text-uppercase" style="text-align: center"><a href="adminWorkerList.jsp">Worker</a></h6>
                        <h1 class="display-1" style="text-align: center"><%= worker%></h1>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

    </body>
</html>
