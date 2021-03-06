<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- SEO Meta Tags -->
<meta name="description"
	content="Tivo is a HTML landing page template built with Bootstrap to help you crate engaging presentations for SaaS apps and convert visitors into users.">
<meta name="author" content="Inovatik">

<!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
<meta property="og:site_name" content="">
<!-- website name -->
<meta property="og:site" content="">
<!-- website link -->
<meta property="og:title" content="">
<!-- title shown in the actual shared post -->
<meta property="og:description" content="">
<!-- description shown in the actual shared post -->
<meta property="og:image" content="">
<!-- image link, make sure it's jpg -->
<meta property="og:url" content="">
<!-- where do you want your post to link to -->
<meta property="og:type" content="article">

<!-- Website Title -->
<title>Koggiri-studymate</title>

<!-- Styles -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&amp;display=swap&amp;subset=latin-ext"
	rel="stylesheet">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/fontawesome-all.css" rel="stylesheet">
<link href="resources/css/swiper.css" rel="stylesheet">
<link href="resources/css/magnific-popup.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet">

<!-- Favicon  -->
<link rel="icon" href="resources/images/favicon.png">
<!-- Icon -->
<script src="https://kit.fontawesome.com/cc41398456.js"
	crossorigin="anonymous"></script>
</head>

<body data-spy="scroll" data-target=".fixed-top">
	<a href="body" class="back-to-top page-scroll" style="display: none;">Back
		to Top</a>

	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
		<div class="container">

			<!-- Text Logo - Use this if you don't have a graphic logo -->
			<!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Tivo</a> -->

			<!-- Image Logo -->
			<a class="navbar-brand logo-image" href="index.jsp"><img
				src="resources/images/logo-001.svg" alt="alternative"></a>

			<!-- Mobile Menu Toggle Button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExampleDefault"
				aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-awesome fas fa-bars"></span> <span
					class="navbar-toggler-awesome fas fa-times"></span>
			</button>
			<!-- end of mobile menu toggle button -->

			<div class="collapse navbar-collapse" id="navbarsExampleDefault">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link page-scroll active"
						href="#header">HOME <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link page-scroll"
						href="home">?????????</a></li>

					<!-- Dropdown Menu -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle page-scroll" href="#"
						id="navbarDropdown" role="button" aria-haspopup="true"
						aria-expanded="false">??????</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="https://www.wanted.co.kr/"><span
								class="item-text">?????????</span></a>
							<div class="dropdown-items-divide-hr"></div>
							<a class="dropdown-item" href="https://www.jobkorea.co.kr/"><span
								class="item-text">????????????</span></a>
							<div class="dropdown-items-divide-hr"></div>
							<a class="dropdown-item" href="https://www.saramin.co.kr"><span
								class="item-text">?????????</span></a>
						</div></li>
					<!-- end of dropdown menu -->

					<li class="nav-item"><a class="nav-link page-scroll"
						href="studyCafeMap.jsp">??????</a></li>

					<li class="nav-item"><a class="nav-link page-scroll"
						href="faq.jsp">FAQ</a>
					</li>
				</ul>

				<%
                  //???????????? ???????????? ????????? ??????
                  String name=(String)session.getAttribute("namekey");
                  int userNo=(Integer)session.getAttribute("userNo");
                %>
				<%if(name==null){ %>
				<span class="nav-item"> <a class="btn-outline-sm"
					href="login">?????????</a>
				</span> <span class="nav-item"> <a class="btn-outline-sm"
					href="signup">????????????</a>
				</span>
				<%}else{ %>
				<span class="nav-item"> <a class="btn-outline-sm"
					href="alarmList?userNo=${userNo }">??????</a>
				</span> <span class="nav-item"> <a class="btn-outline-sm"
					href="javascript:void(0);" onclick="javascript:frm.submit();">???????????????</a>
				</span> <span class="nav-item"> <a class="btn-outline-sm"
					href="logout">????????????</a>
				</span>
				<%} %>
			</div>
		</div>
		<!-- end of container -->
	</nav>
	<!-- end of navbar -->
	<!-- end of navigation -->


	<!-- ??????????????? ?????? -->
	<form action="mypage" method="post" name="frm">
		<input type="hidden" name="userNo" value=${userNo}>
	</form>

	<!-- Header -->
	<header id="header" class="header">
		<div class="header-content">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-xl-5">
						<div class="text-container">
							<h1>
								????????? ????????? <br> ????????????!&nbsp;<i class="fa-solid fa-comments"></i>
							</h1>
							<p class="p-large">PICK UP YOUR STUDY</p>
							<a class="btn-solid-lg page-scroll" href="signup">????????? ????????????</a>
						</div>
						<!-- end of text-container -->
					</div>
					<!-- end of col -->
					<div class="col-lg-6 col-xl-7">
						<div class="image-container">
							<div class="img-wrapper">
								<div class="frame">
									<div class="center">
										<div class="circle">
											<div class="sky"></div>
											<div class="sun"></div>
											<div class="side-left"></div>
											<div class="side-right"></div>
											<div class="shadow"></div>
											<div class="ground"></div>
										</div>
									</div>
								</div>
							</div>
							<!-- end of img-wrapper -->
						</div>
						<!-- end of image-container -->
					</div>
					<!-- end of col -->
				</div>
				<!-- end of row -->
			</div>
			<!-- end of container -->
		</div>
		<!-- end of header-content -->
	</header>
	<!-- end of header -->
	<svg class="header-frame" data-name="Layer 1"
		xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none"
		viewBox="0 0 1920 310">
        <defs>
            <style>
.cls-1 {
	fill: #185ADB;
}
</style>
        </defs>
        <title>header-frame</title>
        <path class="cls-1"
			d="M0,283.054c22.75,12.98,53.1,15.2,70.635,14.808,92.115-2.077,238.3-79.9,354.895-79.938,59.97-.019,106.17,18.059,141.58,34,47.778,21.511,47.778,21.511,90,38.938,28.418,11.731,85.344,26.169,152.992,17.971,68.127-8.255,115.933-34.963,166.492-67.393,37.467-24.032,148.6-112.008,171.753-127.963,27.951-19.26,87.771-81.155,180.71-89.341,72.016-6.343,105.479,12.388,157.434,35.467,69.73,30.976,168.93,92.28,256.514,89.405,100.992-3.315,140.276-41.7,177-64.9V0.24H0V283.054Z">
        </path>
    </svg>

    <!-- end of header -->


    <!-- Customers -->
    <div class="slider-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Image Slider -->
                    <div class="slider-container">
                        <div class="swiper-container image-slider swiper-container-horizontal">
                            <div class="swiper-wrapper"
                                style="transform: translate3d(-1670.4px, 0px, 0px); transition-duration: 0ms;">
                                <div class="swiper-slide swiper-slide-duplicate"
                                    style="width: 178.8px; margin-right: 30px;" data-swiper-slide-index="1">
                                    <img class="img-fluid" src="resources/images/javascript02.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
                                    data-swiper-slide-index="2" style="width: 178.8px; margin-right: 30px;">
                                    <img class="img-fluid" src="resources/images/kotlin03.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
                                    data-swiper-slide-index="3" style="width: 178.8px; margin-right: 30px;">
                                    <img class="img-fluid" src="resources/images/node.js04.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
                                    style="width: 178.8px; margin-right: 30px;" data-swiper-slide-index="4">
                                    <img class="img-fluid" src="resources/images/python05.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate"
                                    style="width: 178.8px; margin-right: 30px;" data-swiper-slide-index="5">
                                    <img class="img-fluid" src="resources/images/spring06.png" alt="alternative">
                                </div>
                                <div class="swiper-slide" style="width: 178.8px; margin-right: 30px;"
                                    data-swiper-slide-index="0">
                                    <img class="img-fluid" src="resources/images/java01.png" alt="alternative">
                                </div>
                                <div class="swiper-slide" style="width: 178.8px; margin-right: 30px;"
                                    data-swiper-slide-index="1">
                                    <img class="img-fluid" src="resources/images/javascript02.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="2"
                                    style="width: 178.8px; margin-right: 30px;">
                                    <img class="img-fluid" src="resources/images/kotlin03.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="3"
                                    style="width: 178.8px; margin-right: 30px;">
                                    <img class="img-fluid" src="resources/images/node.js04.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-next" style="width: 178.8px; margin-right: 30px;"
                                    data-swiper-slide-index="4">
                                    <img class="img-fluid" src="resources/images/python05.png" alt="alternative">
                                </div>
                                <div class="swiper-slide" style="width: 178.8px; margin-right: 30px;"
                                    data-swiper-slide-index="5">
                                    <img class="img-fluid" src="resources/images/spring06.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate"
                                    style="width: 178.8px; margin-right: 30px;" data-swiper-slide-index="0">
                                    <img class="img-fluid" src="resources/images/java01.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate"
                                    style="width: 178.8px; margin-right: 30px;" data-swiper-slide-index="1">
                                    <img class="img-fluid" src="resources/images/javascript02.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
                                    data-swiper-slide-index="2" style="width: 178.8px; margin-right: 30px;">
                                    <img class="img-fluid" src="resources/images/kotlin03.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
                                    data-swiper-slide-index="3" style="width: 178.8px; margin-right: 30px;">
                                    <img class="img-fluid" src="resources/images/node.js04.png" alt="alternative">
                                </div>
                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
                                    style="width: 178.8px; margin-right: 30px;" data-swiper-slide-index="4">
                                    <img class="img-fluid" src="resources/images/python05.png" alt="alternative">
                                </div>
                            </div> <!-- end of swiper-wrapper -->
                            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                        </div> <!-- end of swiper container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of image slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of slider-1 -->
    <!-- end of customers -->


    <!-- Description -->
    <div class="cards-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="above-heading">DIRECTION</div>
                    <h2 class="h2-heading">NO PAIN NO GAIN</h2>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <div class="row">
                <div class="col-lg-12">

                    <!-- Card -->
                    <div class="card">
                        <div class="card-image">
                            <img class="img-fluid" src="resources/images/description-1.png" alt="alternative">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">??????</h4>
                            <p>???????????? ?????? ????????? ?????? ?????? ???????????? ??????????????? ????????? ??? ??????????</p>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card">
                        <div class="card-image">
                            <img class="img-fluid" src="resources/images/description-2.png" alt="alternative">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">??????</h4>
                            <p>???????????? ?????? ???????????? ??????????????? ????????? ?????? ????????? ??? ???????????? ?????????...</p>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card">
                        <div class="card-image">
                            <img class="img-fluid" src="resources/images/description-3.png" alt="alternative">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">?????????</h4>
                            <p>?????????????????? ????????? ?????? ??????????????? ?????? ????????? ????????? ?????? ??? ?????? 
                                ?????? ???????????? ?????? ????????? ?????????...</p>
                        </div>
                    </div>
                    <!-- end of card -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of cards-1 -->
    <!-- end of description -->


    <!-- Features -->
    <div id="features" class="tabs">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="above-heading">FEATURES</div>
                    <h2 class="h2-heading">HOW?</h2>
                    <p class="p-heading">???????????? ???????????? ????????? ???????????????! <br>
                    </p>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <div class="row">
                <div class="col-lg-12">

                    <!-- Tabs Links -->
                    <ul class="nav nav-tabs" id="argoTabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="nav-tab-1" data-toggle="tab" href="#tab-1" role="tab"
                                aria-controls="tab-1" aria-selected="true"><i class="fa-solid fa-desktop"></i>&nbsp; Hello World!</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="nav-tab-2" data-toggle="tab" href="#tab-2" role="tab"
                                aria-controls="tab-2" aria-selected="false"><i class="fa-solid fa-magnifying-glass"></i>&nbsp; FINDING STUDY</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="nav-tab-3" data-toggle="tab" href="#tab-3" role="tab"
                                aria-controls="tab-3" aria-selected="false"><i class="fa-solid fa-door-open"></i>&nbsp; ENJOY KOGGIRI</a>
                        </li>
                    </ul>
                    <!-- end of tabs links -->

                    <!-- Tabs Content -->
                    <div class="tab-content" id="argoTabsContent">

                        <!-- Tab -->
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="image-container">
                                        <img class="img-fluid" src="resources/images/Hello World-001.png" alt="alternative">
                                    </div> <!-- end of image-container -->
                                </div> <!-- end of col -->
                                <div class="col-lg-6">
                                    <div class="text-container">
                                        <h2>Hello World!</h2>
                                        <p>????????? ?????? ????????? ????????? ???????????? ???????????? ?????? ?????? Hello World! 
                                            ????????? ??????????????? ??????????????? ?????????????????? ???????????? ????????? ???<br> 
                                            ????????? ????????? ?????? ?????????/??????????????? ????????????.<br>
                                            <a class="blue page-scroll" href="signup">Sign Up Form</a> 
                                        </p>
                                        <ul class="list-unstyled li-space-lg">
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">??????????????? ????????? ??????</div>
                                            </li>
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">?????????/????????????
                                                </div>
                                            </li>
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">????????? ??????</div>
                                            </li>
                                        </ul>
                                        <a class="btn-solid-reg popup-with-move-anim"
                                            href="#details-lightbox-1">CLICK</a>
                                    </div> <!-- end of text-container -->
                                </div> <!-- end of col -->
                            </div> <!-- end of row -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->

                        <!-- Tab -->
                        <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="image-container">
                                        <img class="img-fluid" src="resources/images/Hello World-002.png" alt="alternative">
                                    </div> <!-- end of image-container -->
                                </div> <!-- end of col -->
                                <div class="col-lg-6">
                                    <div class="text-container">
                                        <h2>FINDING STUDY</h2>
                                        <p>???????????? ????????? ????????? ??????????????????!<i class="fa-solid fa-hands-clapping"></i><br>
                                        ????????? ?????? ?????? ??? ????????? ????????? ???????????? ?????? ?????? ????????? ?????? <br>????????????
                                    ???????????? ??? ?????????! </p>
                                        <ul class="list-unstyled li-space-lg">
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">????????? ??? ?????? ???????????? ?????? ??? ???????????? ???????????????.</div>
                                            </li>
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">???????????? ????????? ???????????????! ?????? ???????????? ?????? ?????? ?????????!</div>
                                            </li>
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">???????????? ????????? ????????? ????????? ?????????????????? ????????????!</div>
                                            </li>
                                        </ul>
                                        <a class="btn-solid-reg popup-with-move-anim"
                                            href="#details-lightbox-2"> CLICK</a>
                                    </div> <!-- end of text-container -->
                                </div> <!-- end of col -->
                            </div> <!-- end of row -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->

                        <!-- Tab -->
                        <div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab-3">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="image-container">
                                        <img class="img-fluid" src="resources/images/Hello-World-003.png" alt="alternative">
                                    </div> <!-- end of image-container -->
                                </div> <!-- end of col -->
                                <div class="col-lg-6">
                                    <div class="text-container">
                                        <h3>ENJOY KOGGIRI</h3>
                                        <p>???????????? ?????? ????????? ????????? ?????? ????????????? ???????????????! <br>
                                        ?????????????????? ????????? ???????????? ????????? ????????? ?????? ??????????????????<br>
                                    ???????????????, ???????????? ?????? ????????? ??????????????? ????????? ??? ????????????. <br>
                                    ???????????? ????????? ???????????? ?????? ????????? ???????????????!</p>
                                        <ul class="list-unstyled li-space-lg">
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">?????? ?????????????????? ??? ????????? ?????? ??????????????????!
                                                    </div>
                                            </li>
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">?????????????????? ??????????????? ??????????????? ???????????? ???????????????!</div>
                                            </li>
                                            <li class="media">
                                                <i class="fas fa-square"></i>
                                                <div class="media-body">???????????? ????????? ???????????? ????????? ???????????? ????????????!</div>
                                            </li>
                                        </ul>
                                        <a class="btn-solid-reg popup-with-move-anim"
                                            href="#details-lightbox-3">CLICK</a>
                                    </div> <!-- end of text-container -->
                                </div> <!-- end of col -->
                            </div> <!-- end of row -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->

                    </div> <!-- end of tab content -->
                    <!-- end of tabs content -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of tabs -->
    <!-- end of features -->


    <!-- Details Lightboxes -->
    <!-- Details Lightbox 1 -->
    <div id="details-lightbox-1" class="lightbox-basic zoom-anim-dialog mfp-hide">
        <div class="container">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">??</button>
                <div class="col-lg-8">
                    <div class="image-container">
                        <img class="img-fluid" src="resources/images/detail-001.png" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
                <div class="col-lg-4">
                    <h3>????????? ????????????</h3>
                    <hr>
                    <h5>Core service</h5>
                    <p>?????????????????? ????????? ??????????????? ????????? ???????????? ??? ??? ????????????.<br>
                    ????????????????????? ??????????????? ???????????? ????????? ???????????? ???????????????! :)</p>
                    <ul class="list-unstyled li-space-lg">
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Automate user signup</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Quick formatting tools</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Fast email checking</div>
                        </li>
                    </ul>
                    <a class="btn-solid-reg mfp-close" href="signup">SIGN UP</a> <a
                        class="btn-outline-reg mfp-close as-button" href="#screenshots">??????</a>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of lightbox-basic -->
    <!-- end of details lightbox 1 -->

    <!-- Details Lightbox 2 -->
    <div id="details-lightbox-2" class="lightbox-basic zoom-anim-dialog mfp-hide">
        <div class="container">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">??</button>
                <div class="col-lg-8">
                    <div class="image-container">
                        <img class="img-fluid" src="resources/images/details-lightbox.png" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
                <div class="col-lg-4">
                    <h3>????????? ?????? VS ????????? ??????</h3>
                    <hr>
                    <h5>Core service</h5>
                    <p>????????? ?????? ???????????? ????????? ?????? ????????? ???????????? ????????????<br>
                    ??????????????? ?????? ????????? ??????????????????!</p>
                    <ul class="list-unstyled li-space-lg">
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Automate user signup</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Quick formatting tools</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Fast email checking</div>
                        </li>
                    </ul>
                    <a class="btn-solid-reg mfp-close" href="signup">SIGN UP</a> <a
                        class="btn-outline-reg mfp-close as-button" href="#screenshots">??????</a>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of lightbox-basic -->
    <!-- end of details lightbox 2 -->

    <!-- Details Lightbox 3 -->
    <div id="details-lightbox-3" class="lightbox-basic zoom-anim-dialog mfp-hide">
        <div class="container">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">??</button>
                <div class="col-lg-8">
                    <div class="image-container">
                        <img class="img-fluid" src="resources/images/details-lightbox.png" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
                <div class="col-lg-4">
                    <h3>????????? ??????????????? ????????? ????????????...!</h3>
                    <hr>
                    <h5>Core service</h5>
                    <p>?????? ????????? ????????? ???????????? ??????????????? ???????????? ????????????
                        ???????????? ????????? ???????????????. ???????????? ?????? ????????? ????????????
                        ????????? ??????????????? ??????????????????, ????????? ????????? ???????????? ?????????
                        ??????????????? ?????? ????????? ????????? ????????? ????????????!
                    </p>
                    <ul class="list-unstyled li-space-lg">
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Automate user signup</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Quick formatting tools</div>
                        </li>
                        <li class="media">
                            <i class="fas fa-square"></i>
                            <div class="media-body">Fast email checking</div>
                        </li>
                    </ul>
                    <a class="btn-solid-reg mfp-close" href="signup">SIGN UP</a> <a
                        class="btn-outline-reg mfp-close as-button" href="#screenshots">??????</a>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of lightbox-basic -->
    <!-- end of details lightbox 3 -->
    <!-- end of details lightboxes -->


    <!-- Details -->
    <div id="details" class="basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="text-container">
                        <h1>???, ????????? ???????????????. <br>???????????? ??????????????????!</h1>
                        <br><br>
                    <a class="btn-solid-reg page-scroll" href="signup">SIGN UP</a>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    <div class="image-container">
                        <img class="img-fluid" src="resources/images/start.png" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-1 -->
    <!-- end of details -->


    <!-- Video -->
    <div id="video" class="basic-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <!-- Video Preview -->
                    <div class="image-container">
                        <div class="video-wrapper">
                            <a class="popup-youtube" href="https://www.youtube.com/watch?v=fLCjQJCekTs"
                                data-effect="fadeIn">
                                <img class="img-fluid" src="resources/images/video.png" alt="alternative">
                                <span class="video-play-button">
                                    <span></span>
                                </span>
                            </a>
                        </div> <!-- end of video-wrapper -->
                    </div> <!-- end of image-container -->
                    <!-- end of video preview -->

                    <div class="p-heading"></div>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-2 -->
    <!-- end of video -->



    <!-- Testimonials -->
    <div class="slider-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="above-heading">FEATURES</div>
                    <h2 class="h2-heading" id="h2-center">TEAM</h2>
                    <br><br>

                    <!-- Text Slider -->
                    <div class="slider-container">
                        <div class="swiper-container text-slider swiper-container-horizontal">
                            <div class="swiper-wrapper"
                                style="transform: translate3d(-1886px, 0px, 0px); transition-duration: 0ms;">
                                <div class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3"
                                    style="width: 943px;">
                                    <div class="image-wrapper">
                                        <img class="img-fluid" src="resources/images/kakao.png" alt="alternative">
                                    </div> <!-- end of image-wrapper -->
                                    <div class="text-wrapper">
                                        <div class="testimonial-text">BackEnd Developer</div>
                                    </div> <!-- end of text-wrapper -->
                                </div>

                                <!-- Slide -->
                                <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="0"
                                    style="width: 943px;">
                                    <div class="image-wrapper">
                                        <img class="img-fluid" src="resources/images/naver.png" alt="alternative">
                                    </div> <!-- end of image-wrapper -->
                                    <div class="text-wrapper">
                                        <div class="testimonial-text">BackEnd Developer/Team Leader</div>
                                        <div class="testimonial-author">?????????</div>
                                    </div> <!-- end of text-wrapper -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="1"
                                    style="width: 943px;">
                                    <div class="image-wrapper">
                                        <img class="img-fluid" src="resources/images/carrot.png" alt="alternative">
                                    </div> <!-- end of image-wrapper -->
                                    <div class="text-wrapper">
                                        <div class="testimonial-text">BackEnd Developer</div>
                                        <div class="testimonial-author">?????????</div>
                                    </div> <!-- end of text-wrapper -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="2"
                                    style="width: 943px;">
                                    <div class="image-wrapper">
                                        <img class="img-fluid" src="resources/images/kakao.png" alt="alternative">
                                    </div> <!-- end of image-wrapper -->
                                    <div class="text-wrapper">
                                        <div class="testimonial-text">FrontEnd Developer
                                        </div>
                                        <div class="testimonial-author">?????????</div>
                                    </div> <!-- end of text-wrapper -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <!-- Slide -->
                                <div class="swiper-slide" data-swiper-slide-index="3" style="width: 943px;">
                                    <div class="image-wrapper">
                                        <img class="img-fluid" src="resources/images/woo-ah.png" alt="alternative">
                                    </div> <!-- end of image-wrapper -->
                                    <div class="text-wrapper">
                                        <div class="testimonial-text">BackEnd Developer</div>
                                        <div class="testimonial-author">?????????</div>
                                    </div> <!-- end of text-wrapper -->
                                </div> <!-- end of swiper-slide -->
                                <!-- end of slide -->

                                <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
                                    data-swiper-slide-index="0" style="width: 943px;">
                                    <div class="image-wrapper">
                                        <img class="img-fluid" src="resources/images/naver.png" alt="alternative">
                                    </div> <!-- end of image-wrapper -->
                                    <div class="text-wrapper">
                                        <div class="testimonial-text">BackEnd Developer</div>
                                        <div class="testimonial-author">...</div>
                                    </div> <!-- end of text-wrapper -->
                                </div>
                            </div> <!-- end of swiper-wrapper -->

                            <!-- Add Arrows -->
                            <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide"></div>
                            <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide">
                            </div>
                            <!-- end of add arrows -->

                            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                        </div> <!-- end of swiper-container -->
                    </div> <!-- end of slider-container -->
                    <!-- end of text slider -->

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of slider-2 -->
    <!-- end of testimonials -->


    <!-- Newsletter -->
    <div class="form">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                        <div class="above-heading"></div>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of form -->
    <!-- end of newsletter -->



    <!-- Scripts -->
    <script src="resources/js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="resources/js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
    <script src="resources/js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="resources/js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="resources/js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="resources/js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="resources/js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
    <script src="resources/js/scripts.js"></script> <!-- Custom scripts -->


</body>

</html>