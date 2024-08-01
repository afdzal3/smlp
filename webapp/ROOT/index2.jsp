<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <title>IRIS</title>

    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>





        #rightDiv {


            background-image: url('/images/Background-IRIS3.jpg');

        }
        </style>
</head>

<body>
    <%@ include file="var.jsp" %>

        <div class="container-fluid" id="main">
            <div class="row">

                <!-- IRIS 3 COL STARTS -->
                 <div class="col-7">


                <% if (env.equals("dev")) { %>
                    <h2 class="bg-danger text-white">
                        DEV
                    </h2>
                    <% } else { %>
                        <h2 class="bg-primary text-white" style="background-color: <%= barColor %>;">
                            <%= env %>
                        </h2>
                        <% } %>

                            <div class="wrapper">
                                <div class="container">
                                    <div class="header">
                                        <div class="header-content">
                                            <h1 class="display-4">INTEGRATED REQUISITION & INTERACTIVE SERVICE DESK</h1>
                                            <img src="/images/iris3-logo1.png" alt="IRIS3 Logo" class="img-fluid">
                                        </div>
                                    </div>

                                    <div class="content">
                                        <div class="card">
                                            <a href="<%= spUrl %>">
                                                <img src="/images/SP-icon.png" alt="Service Portal"
                                                    class="card-img-top">
                                                <div class="card-body">
                                                    <h2 class="card-title">SERVICE PORTAL (SP)</h2>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="card">
                                            <a href="<%= ssUrl %>">
                                                <img src="/images/SS-icon1.png" alt="Self Service" class="card-img-top">
                                                <div class="card-body">
                                                    <h2 class="card-title">SELF SERVICE (SS)</h2>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="card">
                                            <a href="<%= smUrl %>">
                                                <img src="/images/SM-icon.png" alt="Service Manager"
                                                    class="card-img-top">
                                                <div class="card-body">
                                                    <h2 class="card-title">SERVICE MANAGER (SM)</h2>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="footer">
                                    <a href="https://ibpm.tm.com.my" class="btn btn-link">GUIDELINE</a>
                                    <a target="_blank" href="/images/IRIS - FAQ.pdf" class="btn btn-link">FAQ</a>
                                    <a href="https://idss.tm.com.my/idss/" class="btn btn-link">FORGOT PASSWORD</a>
                                    <a target="_blank" href="/images/Contact_Us_v5.pdf" class="btn btn-link">CONTACT
                                        US</a>
                                </div>
                            </div>

                        </div> <!-- IRIS 3 ENDS -->
                        <div class="col-5 d-md-flex d-none" id="rightDiv">


                            <!-- Empty Container -->
                            <img src="/images/ynin-tm-logo.png" alt="Top Right" class="position-fixed top-0 right-0">
                            <p class="position-fixed bottom-0 right-0">Powered by</p>
                            <img src="/images/GITD-Rework.png" alt="Bottom Right"
                                class="position-fixed bottom-0 right-0" style="width: 99px; height: 51px;">
                            </div> <!-- ENDS Empty Container -->
            </div><!--/row-->
        </div> <!-- /main-->

        <footer class="app-footer sticky-footer">
        </footer>

        <!-- Include Bootstrap JS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>