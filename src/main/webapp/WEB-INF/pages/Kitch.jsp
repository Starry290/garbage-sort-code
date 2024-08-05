<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Garbage</title>
    <link rel="icon" href="/images/title-bg.png">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Themeum">

    <!-- Include All Css -->
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/fonts.css">
    <link rel="stylesheet" href="/css/preset.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/responsive.css">
    <link rel="stylesheet" href="/css/layui.css"  media="all">
    <!--[if lt IE 9]>
    <script src="/js/html5shive.js"></script>
    <![endif]-->
</head>

<body>
<!-- Header Area -->
<header class="header-area inner-page">
    <nav class="navigation">
        <div class="container">
            <div class="row" style="margin-top: -3%">
                <div class="col-sm-12 col-xs-12">
                    <div class="logo pull-left">
                        <a><p alt="Kidzy"></a>
                    </div>
                    <div class="mobile-menu hidden-lg hidden-md hidden-sm"></div>
                </div>
            </div>
        </div>
    </nav>
</header>
<style>
    .inputfile + label {
        font-size: 1.25em;
        font-weight: 700;
        color: white;
        background-color: #7c217a;
        display: inline-block;
    }
    .inputfile + label {
        cursor: pointer; /* "hand" cursor */
    }
    .inputfile:focus + label,
    .inputfile + label:hover {
        background-color: #7c1b3c;
    }

    .inputfile {
        width: 0.1px;
        height: 0.1px;
        opacity: 0;
        overflow: hidden;
        position: absolute;
        z-index: -1;}
</style>
<!-- /.header-area -->
<!-- Breadcrumb  -->
<section class="breadcrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-xs-12 text-center">
                <div class="breadcrumb-content">
                    <h2>Result</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.breadcrumb-section  -->

<!-- Event Section -->
<section class="event-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-xs-12">
                <div class="single-event">
                    <div class="event-img">
                        <img src="/images/kitch.png" alt="">
                    </div>
                    <h3><a href="#">Notes：</a></h3>
                    <h4 style="color: #0b0b0b">
                        Household Food Waste refers to the daily life of leftovers, vegetable leaves and fruit peels and other perishable organic waste, can be thrown here oh ~
                    </h4>
                </div>
            </div>
            <div class="col-sm-6 col-xs-12">
                <div class="single-event">
                    <div class="event-img" style="margin-top: 15%">
                        <%--                        <img src="/images/recyc.png" alt="">--%>
                        <img src="/test/${filename}" alt="">
                        <a class="bg3">Household Food Waste</a>
                    </div>
                    <h3><a href="#">Household Food Waste refers to the garbage generated in the daily life of residents and food processing, catering services, unit meals and other activities</a></h3>
                    <h4>
                        Including discarding unused vegetable leaves, leftovers, leftovers, fruit skins, eggshells, tea residue, bones (chicken bones, fish bones), etc., garbage contains very high water and organic matter, it is easy to rot, produce odor. After proper treatment and processing, it can be transformed into new resources.
                    </h4>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12" style="margin-left: 30%">
            </div>
        </div>
    </div>
</footer>
<!-- /.footer-section -->
<!-- Include All JavaScript -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/mixIt.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/main.js"></script>
<script>
    function submitBtnClick(){
        document.fileForm.submit();
    }
</script>
</body>
</html>