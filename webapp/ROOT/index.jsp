<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <link rel="shortcut icon" href="http://www.yoursite.com/images/iris3-logo1.png"> 

    <title>IRIS</title>


<body>


    <!-- IRIS 3 STARTS -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IRIS 3.0 - Integrated Requisition & Interactive Service Desk</title>
    <style>
        body {
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            min-height: 100vh;
            position: relative;
            background-color: #f4f4f4;
            overflow: hidden;
        }

        body::before {
            content: "";
            position: absolute;
            top: 0;
            right: 0;
            width: 45%;
            height: 100%;
            background-image: url('/images/Background-IRIS3.jpg');
            background-size: cover;
            background-position: center;
            opacity: 0.5;
            z-index: -1;
        }

        .top-right-image,
        .bottom-right-image {
            position: fixed;
            right: 0;
            z-index: 0;
        }

        .top-right-image {
            top: 0;
        }

        .bottom-right-image {
            bottom: 0;
            width: 99px;
            height: 51px;
        }

        .wrapper {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            max-width: 900px;
            margin-left: 20px;
            z-index: 1;
            padding: 20px;
            box-sizing: border-box;
        }

        .container {
            flex: 1;
            padding: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        .header,
        .footer {
            padding: 20px;
            width: 100%;
            text-align: center;
        }

        .header-content {
            display: inline-block;
            text-align: center;
        }

        .header h1 {
            font-size: 1.6vw;
            /* Responsive font size */
            margin: 0;
            margin-bottom: 25px;
        }

        .header img {
            width: 60vw;
            /* Responsive image size */
            max-width: 249px;
            height: auto;
            display: block;
            margin: 0 auto 0;
        }

        .content {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-wrap: nowrap;
            margin-bottom: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        .content div {
            padding: 20px;
            margin: 10px;
            border-radius: 5px;
            /* box-shadow: 0 0 10px rgba(0,0,0,0.1); */
            width: calc(100% - 40px);
            max-width: 200px;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-sizing: border-box;
        }

        .content div a {
            text-decoration: none;
            color: inherit;
        }

        .content h2 {
            font-size: 1.1vw;
            /* Responsive font size */
            margin: 0;
            margin-top: 5px;
        }

        .content div img {
            width: 30vw;
            /* Responsive image size */
            max-width: 130px;
            height: auto;
            margin-bottom: 10px;
        }

        .footer {
            text-align: center;
            margin-top: auto;
            width: 100%;
        }

        .footer a {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            color: #333;
            text-decoration: underline;
            border-radius: 5px;
        }

        .footer a:hover {
            text-decoration: none;
            background-color: rgba(0, 0, 0, 0.1);
        }

        .devdiv {
            background-color: red;
            color: white;
        }

        @media (max-width: 760px) {
            body {
                align-items: center;
                overflow: scroll;
            }

            body::before {
                display: none;
            }

            .top-right-image,
            .bottom-right-image {
                display: none;
            }

            .wrapper {
                margin-left: 0;
            }

            .header h1 {
                font-size: 3.5vw;
            }

            .header img {
                width: 70vw;
                align-items: center;
            }

            .content div {
                width: calc(50% - 40px);
                margin: 10px 5px;
            }

            .content h2 {
                font-size: 3.3vw;
            }

            .content div img {
                width: 20vw;
            }




        }
    </style>
    <!-- IRIS 3 ENDS -->
    <%@ include file="var.jsp" %>

        <div class="container-xl">
            <!-- HTML Start -->

            <!-- IRIS 3 STARTS -->
            <img src="/images/ynin-tm-logo.png" alt="Top Right" class="top-right-image">
            <p class="bottom-right-image">Powered by</p>
            <img src="/images/GITD-Rework.png" alt="Bottom Right" class="bottom-right-image">


            <% if (env.equals("dev")) { %>
                <h2 class="devdiv">
                    DEV
                </h2>
                <% } else { %>
                    <h2 style="background-color: <%= barColor %> ; color:white">
                        <%= env %>
                    </h2>
                    <% } %>

                        <div class="wrapper">
                            <div class="container">
                                <div class="header">
                                    <div class="header-content">
                                        <h1>INTEGRATED REQUISITION & INTERACTIVE SERVICE DESK</h1>
                                        <img src="/images/iris3-logo1.png" alt="IRIS3 Logo">
                                    </div>
                                </div>

                                <div class="content">
                                    <div>
                                        <a href="<%= spUrl %>">
                                            <img src="/images/SP-icon.png" alt="Service Portal">
                                            <h2>SERVICE PORTAL (SP)</h2>
                                        </a>

                                    </div>
                                    <div>
                                        <a href="<%= ssUrl %>">
                                            <img src="/images/SS-icon1.png" alt="Self Service">
                                            <h2>SELF SERVICE (SS)</h2>
                                        </a>
                                    </div>
                                    <div>
                                        <a href="<%= smUrl %>">
                                            <img src="/images/SM-icon.png" alt="Service Manager">
                                            <h2>SERVICE MANAGER (SM)</h2>
                                        </a>
                                    </div>
                                </div>
                            </div>



                            <div class="footer">
                                <a href="https://ibpm.tm.com.my">GUIDELINE</a>
                                <a target="_blank" href="/images/IRIS - FAQ.pdf">FAQ</a>
                                <a href="https://idss.tm.com.my/idss/">FORGOT PASSWORD</a>
                                <a target="_blank" href="/images/Contact_Us_v5.pdf">CONTACT US</a>
                            </div>
                        </div>
                        <!-- IRIS 3 ENDS -->
        </div>

        <footer class="app-footer sticky-footer">
        </footer>







</body>

</html>