<%@ page contentType="text/html;charset=UTF-8" %>
<%
    response.setHeader("X-Frame-Options", "DENY");
    response.setHeader("X-Content-Type-Options", "nosniff");
    response.setHeader("Content-Security-Policy", "default-src 'self'; script-src 'self' https://cdn.jsdelivr.net; style-src 'self' https://cdn.jsdelivr.net");
%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<%@ include file="var.jsp" %>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title>IRIS</title>

        <!-- Include Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            crossorigin="anonymous">

        <style>
            .iris3 {
                background: url('/images/Background-IRIS3.jpg') no-repeat;
                background-size: cover;
                background-position: center;
                z-index: 1;
            }

            .leftDiv {
                background-color: #f4f4f4;
                height: 100vh;
            }

            .bottom-right-image {
                width: 99px;
                height: 51px;
            }

            .irislogo {
                width: 60vw;
                max-width: 249px;
                height: auto;
                display: block;
                margin: 0 auto 0;
            }

            /* Remove the empty ruleset */
        </style>

    </head>

    <body class="">


        <div class="container-fluid" id="main">
            <div class="row text-gray mt-auto" style="background-color:<%= barColor %>">
                <div class="col" style="background-color: <%= barColor %>">
                    <h3>
                        <% if (env.equals("dev")) { %>
                            <span style="color:red">
                                <%= env %>
                            </span>
                            <% } else { %>
                                <span style="color:<%= barColor %>">
                                    <%= env %>
                                </span>
                                <% } %>
                    </h3>
                </div>
                <div class="col text-end">
                    <img src="/images/ynin-tm-logo.png">
                </div>
            </div><!-- /row-->




            <div class="row iris3 h-100">
                <div class="col-md-7 col-sm-12 leftDiv ">
                    <div class="row">
                        <div class="col-12 align-items-center text-center">
                            <h2 class="mt-1 fs-2 fw-bold">INTEGRATED REQUISITION & INTERACTIVE SERVICE DESK </h2>
                        </div>
                    </div><!-- /row-->
                    <div class="row m-2">
                        <div class="col-12 text-center">
                            <img src="/images/iris3-logo1.png" alt="IRIS3 Logo" class="img irislogo">
                        </div>
                    </div><!-- /row-->
                    <div class="row text-center float-center m-0">

                        <div class="card col mx-1 rounded-0 border-0 rounded-top">
                            <a href="<%= spUrl %>">
                                <img src="/images/SP-icon.png" alt="Service Portal" class="card-img-top m-1">
                            </a>
                        </div>
                        <div class="card col mx-1 rounded-0 border-0 rounded-top">
                            <a href="<%= ssUrl %>">
                                <img src="/images/SS-icon1.png" alt="Self Service" class="card-img-top m-1">
                            </a>
                        </div>
                        <div class="card col mx-1 rounded-0 border-0 rounded-top">
                            <a href="<%= smUrl %>">
                                <img src="/images/SM-icon.png" alt="Service Manager" class="card-img-top m-1">
                            </a>
                            <!--
                                    <div class="card-body">
                                        <div class="card-title text-center">SERVICE MANAGER (SM)</div>
                                    </div>
                                -->


                        </div>
                    </div><!-- /row-->
                    <div class="row text-center float-center m-0">

                        <a href="<%= spUrl %>" class="col mx-1  btn btn-outline-secondary rounded-0 border-0">
                            SERVICE PORTAL (SP)
                            <p class="fst-italic fs-6">[internal access only]</p>
                        </a>

                        <a href="<%= ssUrl %>" class="col mx-1  btn btn-outline-secondary rounded-0 border-0">
                            SELF SERVICE (SS)
                        </a>

                        <a href="<%= smUrl %>" class="col mx-1  btn btn-outline-secondary rounded-0 border-0">
                            SERVICE MANAGER (SM)
                        </a>






                    </div>
                    <div class="row mt-2">
                        <div class="col-12 text-center">
                            <a href="https://ibpm.tm.com.my" class="btn btn-link">GUIDELINE</a>
                            <a target="_blank" href="/images/IRIS - FAQ.pdf" class="btn btn-link">FAQ</a>
                            <a href="https://idss.tm.com.my/idss/" class="btn btn-link">FORGOT PASSWORD</a>
                            <a target="_blank" href="/images/Contact_Us_v5.pdf" class="btn btn-link">CONTACT
                                US</a>

                        </div>

                    </div><!-- /row-->


                </div>
            </div><!--/col leftdiv -->
            <div class="col-md-5 text-end" id="rightDiv">
                <img src="/images/ynin-tm-logo.png">
            </div>
        </div><!-- /row-->
        <footer class="row text-gray mt-auto fixed-bottom" style="background-color:<%= barColor %>">
            <div class="col d-block d-md-none ">
                <img src="/images/ynin-tm-logo.png" class="m-1">
            </div>
            <div class="col float-end text-end ">
                <span class="fst-italic mt-2">Powered by</span>
                <img src="/images/GITD-Rework.png" class="img-fluid bottom-right-image m-0">
            </div>

        </footer>
        </div> <!-- /container -->
        <!-- Include Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>

</html>