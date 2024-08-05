<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Garbage</title>
    <link rel="icon" href="static/images/title-bg.png">
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
    <script src="/js/html5shive.js"></script>
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
                    <h2>Intelligent waste sorting system</h2>
                </div>
            </div>
        </div>
    </div>
</section>
        <div class="row" style="margin-left: 18%">
            <img src="/images/123.png" style="height: 600px">
            </div>
        </div>
    </div>
</section>
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-12" style="margin-left: 30%">
                <div class="footer-widget">
                        <h2 style="color: white;margin-left: 1%">     Intelligent waste sorting system</h2>
                    <form action="main/upload" method="POST" enctype="multipart/form-data" class="subscribe-form">
                        <div class="event-img" style="margin-top: -150px;">
                            <input type="file" name="file" id="file" class="inputfile"/>
                            <label for="file" style="font-size: 20px" class="primary-btn pull-left"><span>Select file</span>
                            </label>
                        </div>
                        <div class="event-img" style="margin-top: -150px;">
                            <input type="submit" name="btn" id="Btn" class="inputfile"/>
                            <label for="Btn" style="margin-left: 30px" class="primary-btn pull-left"
                                   onclick="submitBtnClick()" data-toggle="modal" href="#mymodal"><span>Start recognition</span>
                            </label>

                        </div>
                    </form>
                    <div class="modal" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="mymodal-link">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div style="margin-left: 25%">
                                        <img src="/images/loading.gif">
                                        <p>
                                        <h1 style="color: #1c7430">Identifying, please wait……</h1>
                                        <span id="time" style="color: #0069d9;font-size: 20px"></span>
                                        </p>
                                </div>
                            </div>
                        </div>
                    </div>
                <%--model end--%>

                </div>
            </div>
        </div>
    </div>
</footer>
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/mixIt.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/main.js"></script>
<script type="text/javascript">

    function submitBtnClick(){
        document.fileForm.submit();
    }
</script>

</body>
</html>