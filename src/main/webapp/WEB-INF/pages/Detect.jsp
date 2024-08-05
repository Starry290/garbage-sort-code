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
                        易腐烂的、含有机质的生活垃圾，包括家庭厨余垃圾、餐厨垃圾和其他厨余垃圾等可以丢在这里哟~~~
                    </h4>
                </div>
<%--                <div class="single-event">--%>
<%--                    <div class="event-img">--%>
<%--                        <img src="/images/kitch.png" alt="">--%>
<%--                        <a class="bg5">Household Food Waste</a>--%>
<%--                    </div>--%>
<%--                    <h3><a href="#">厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾</a></h3>--%>
<%--                    <h4>--%>
<%--                        厨余垃圾含有极高的水分与有机物，很容易腐坏，产生恶臭。经过妥善处理和加工，--%>
<%--                        可转化为新的资源，高有机物含量的特点使其经过严格处理后可作为肥料、饲料，--%>
<%--                        也可产生沼气用作燃料或发电，油脂部分则可用于制备生物燃料。--%>
<%--                    </h4>--%>
<%--                </div>--%>
            </div>
            <div class="col-sm-6 col-xs-12">
                <div class="single-event">
                    <div class="event-img" style="margin-top: 15%">
<%--                        <img src="/images/recyc.png" alt="">--%>
                        <img src="/test/${filename}" alt="">
                        <a class="bg3">Household Food Waste</a>
                    </div>
                    <h3><a href="#">厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾</a></h3>
                    <h4>
                        厨余垃圾含有极高的水分与有机物，很容易腐坏，产生恶臭。经过妥善处理和加工，
                        可转化为新的资源，高有机物含量的特点使其经过严格处理后可作为肥料、饲料，
                        也可产生沼气用作燃料或发电，油脂部分则可用于制备生物燃料。
                    </h4>
                </div>
<%--                <div class="single-event">--%>
<%--                    <div class="event-img">--%>
<%--                        <img src="/images/harm.png" alt="">--%>
<%--                        <a href="#" class="bg2">Hazardous Waste</a>--%>
<%--                    </div>--%>
<%--                    <h3><a href="#">有害垃圾指对人体健康或者自然环境造成直接或者潜在危害的生活废弃物</a></h3>--%>
<%--                    <h4>--%>
<%--                        有害垃圾包括废电池、废日光灯管、废水银温度计、过期药品;--%>
<%--                        废镍镉电池和废氧化汞电池：充电电池、锂电池、镉镍电池、铅酸电池、蓄电池、纽扣电池等电池;--%>
<%--                        废药品及其包装物：过期药物、药物胶囊、药片、药品内包装、酒精、口罩、使用过的医用纱布棉签等。--%>
<%--                    </h4>--%>
<%--                </div>--%>
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
