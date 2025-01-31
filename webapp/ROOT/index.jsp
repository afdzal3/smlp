<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String nonce = java.util.UUID.randomUUID().toString();
    response.setHeader("X-Frame-Options", "DENY");
    response.setHeader("X-Content-Type-Options", "nosniff");
    response.setHeader("Content-Security-Policy", "default-src 'self'; script-src 'self' 'nonce-" + nonce + "'; style-src 'self' 'nonce-" + nonce + "';");
%>


<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-5BLEQDY543"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-5BLEQDY543');
</script>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<%@ include file="var.jsp" %>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <link rel="icon" href="/images/iris3-logo1.png" />

        <title>IRIS</title>

        <!-- Include Bootstrap CSS -->

        <link href="/bootstrap.css" rel="stylesheet">

           <style nonce="<%= nonce %>">
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
                width: 20vw;
                max-width: 249px;
                height: auto;
                display: block;
                margin: 0 auto 0;
            }

            .serviceLogo {

                height: 10em;
                text-align: center;
                object-fit: cover;


            }

            .serviceLogoDiv {

                height: 12em;
                padding: 1em;

            }

            /* Remove the empty ruleset */
        </style>

    </head>

    <body class="">


        <div class="container-fluid" id="main">
            <div class="row text-gray mt-auto p-0">
                <div class="col-7" style="background-color:<%= barColor %>">
                    <h3>
                        <% if (env.equals("dev")) { %>
                            <span style="color:white">
                                <%= env %>
                            </span>
                            <% } else { %>
                                <span style="color:<%= barColor %>">
                                    <%= env %>
                                </span>
                                <% } %>
                    </h3>
                </div>
                <div class="col text-end ">
                    <div class="float-end text-end">
                        <img src="/images/ynin-tm-logo.png" class="bg-white m-0">
                    </div>
                </div>
            </div><!-- /row-->




            <div class="row iris3">
                <div class="col-md-7 col-sm-12 leftDiv ">
                    <div class="row">
                        <div class="col-12 align-items-center text-center mt-4">
                            <h4 class="mt-1 fs-4 fw-bold">INTEGRATED REQUISITION & INTERACTIVE SERVICE DESK </h4>
                        </div>
                    </div><!-- /row-->
                    <div class="row m-2">
                        <div class="col-12 text-center">
                            <img src="/images/iris3-logo1.png" alt="IRIS3 Logo" class="img-fluid irislogo">
                        </div>
                    </div><!-- /row-->
                    <div class="row text-center float-center m-0">
                        <div class="card col-md-4">
                            <div class="row">
                                <div class="col-md-12 col-5 serviceLogoDiv">
                                    <a href="<%= spUrl %>">
                                        <img src="/images/SP-icon.png" alt="Service Portal" class="serviceLogo ">
                                    </a>
                                </div>
                                <div class="col-md-12 col-6 card-body">
                                    <a href="<%= spUrl %>" class="btn btn-outline-secondary w-100 m-0 border-0">
                                        SERVICE PORTAL (SP)
                                    </a>
                                </div>
                            </div><!--inner row-->
                        </div>
                        <div class="card col-md-4">
                            <div class="row">
                                <div class="col-md-12 col-5 serviceLogoDiv">
                                    <a href="<%= ssUrl %>">
                                        <img src="/images/SS-icon1.png" alt="Self Service" class="serviceLogo">
                                    </a>
                                </div>
                                <div class="col-md-12 col-6 card-body">
                                    <a href="<%= ssUrl %>" class="btn btn-outline-secondary w-100 m-0 border-0 ">
                                        SELF SERVICE (SS)
                                    </a>
                                </div>
                            </div><!--inner row-->
                        </div>
                        <div class="card col-md-4">
                            <div class="row">
                                <div class="col-md-12 col-5 serviceLogoDiv">
                                    <a href="<%= smUrl %>">
                                        <img src="/images/SM-icon.png" alt="Service Manager" class="serviceLogo">
                                    </a>
                                </div>
                                <div class="col-md-12 col-6 card-body">
                                    <a href="<%= smUrl %>" class="btn btn-outline-secondary w-100 m-0 border-0 ">
                                        SERVICE MANAGER (SM)
                                    </a>
                                </div>
                            </div><!--inner row-->
                        </div>
                    </div><!-- /row-->

                    <p></p>
                    <p></p>

                    <div class="row mt-2">
                        <div class="col-12 text-center">
                            <a href="https://ibpm.tm.com.my" class="btn btn-link">GUIDELINE</a>
                            <a target="_blank" href="/images/IRIS - FAQ.pdf" class="btn btn-link">FAQ</a>
                            <a href="https://idss.tm.com.my/idss/" class="btn btn-link">FORGOT PASSWORD</a>
                            <a target="_blank" href="/images/Contact_Us_v5.pdf" class="btn btn-link">CONTACT
                                US</a>

                        </div>

                    </div><!-- /row-->

                </div><!-- /row-->
            </div><!--/col leftdiv -->
        </div><!-- /row-->
        <footer class="row text-gray mt-auto fixed-bottom bg-light" >
            <!--
            style="background-color:<%= barColor %>"
            <div class="col-5 d-block d-md-none ">
                <img src="/images/ynin-tm-logo.png" class="m-1">
            </div>
        -->
            <div class="col-7"></div>
            <div class="col float-end text-end bg-light ">
                <div class="float-end text-end">
                    <span class="fst-italic mt-2">Powered by</span>
                    <img src="/images/GITD-Rework.png" class="img-fluid bottom-right-image m-0">
                </div>
            </div>

        </footer>
        </div> <!-- /container -->
        <!-- Include Bootstrap JS -->
        <script src="/bootstrap.bundle.js" nonce="<%= nonce %>"></script>
        <script src="/jquery.js" nonce="<%= nonce %>"></script>
    </body>

</html>