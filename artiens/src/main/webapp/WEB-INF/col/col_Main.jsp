<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Stylesheets================== -->
<script type="text/javascript" nonce="a4f84d226a5b4b17b010d07a1b5"
	src="//local.adguard.org?ts=1635669619739&amp;type=content-script&amp;dmn=themes.semicolonweb.com&amp;app=msedge.exe&amp;css=3&amp;js=1&amp;rel=1&amp;rji=1&amp;sbe=0"></script>
<script type="text/javascript" nonce="a4f84d226a5b4b17b010d07a1b5"
	src="//local.adguard.org?ts=1635669619739&amp;name=AdGuard%20Extra&amp;name=AdGuard%20Popup%20Blocker&amp;type=user-script"></script>
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Poppins:300,400,500,600,700|PT+Serif:400,400i&display=swap"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="/style.css" type="text/css" />
<link rel="stylesheet" href="/css/dark.css" type="text/css" />
<link rel="stylesheet" href="/css/font-icons.css" type="text/css" />
<link rel="stylesheet" href="/css/animate.css" type="text/css" />
<link rel="stylesheet" href="/css/magnific-popup.css" type="text/css" />
<link rel="stylesheet" href="/css/components/datepicker.css"
	type="text/css" />
<link rel="stylesheet" href="/css/custom.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Document Title
   ============================================= -->
<title>콜라보레이션</title>

<style>
.mfp-close {
	display: none !important;
}
</style>

</head>

<body class="stretched">
	<!-- Document Wrapper
  ============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
      ============================================= -->
		<header id="header"
			class="full-header transparent-header semi-transparent dark">

			<%@ include file="../include/header.jsp"%>

		</header>
		<!-- #header end -->

		<!-- content -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix" style="width: 1250px;">
					<div style="height: 50px;">
						<h3 style="display: inline-block;">진행중인
							콜라보레이션</h3>
						<a href="planning" >
							<button
								style="float: right; border-color: #00d084; border-radius: 25px; width: 190px; Height: 50px; color: #00d084; background-color: #ffffff">콜라보레이션
								기획</button>
						</a>
					</div>
					<hr>
					
<%-- 				<c:choose>
					<c:when test=""> --%>
					<c:forEach var="result" items="${result }">
					<div class="post-grid row col-mb-30">
						<!-- 콘텐츠 나열해주는 감싸기-->

						<!-- 콘텐츠 1 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<a href="colDetail"></a>
													<img src="/images/collaboration/col/planning1.jpg">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="colDetail">${result.title }</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div id="countdown" class="countdown flex-fill"
														data-year="${result.year }" data-month="${result.month }" data-day="30"
														data-format="dHMS"></div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 10px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6" style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 1 끝-->
					</div>
					</c:forEach>
<%-- 				</c:when> --%>
					

				</div>



				<div class="container clearfix"
					style="margin-top: 200px; width: 1250px;">
					<h3>지난 콜라보레이션</h3>
					<hr>

					<div class="post-grid row col-mb-30">
						<!-- 콘텐츠 나열해주는 감싸기-->

						<!-- 콘텐츠 1 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<img src="/images/collaboration/col/planning3.jpg"
														 onclick="location.href='colDetail'">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="col_detail_end.html">콜라보레이션 타이틀</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; background-color: #666666; color: white;">당선작
														발표</div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 60px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6"
																style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 1 끝-->

						<!-- 콘텐츠 2 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<img src="/images/collaboration/col/planning4.jpg"
														 onclick="location.href='colDetail'">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="#">콜라보레이션 타이틀</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; background-color: #666666; color: white;">당선작
														발표</div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 60px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6"
																style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 2 끝-->

						<!-- 콘텐츠 3 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<img src="/images/collaboration/col/planning5.jpg"
														 onclick="location.href='colDetail'">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="col_detail_end.html">콜라보레이션 타이틀</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; background-color: #666666; color: white;">당선작
														발표</div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 60px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6"
																style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 3 끝-->

						<!-- 콘텐츠 4 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<img src="/images/collaboration/col/planning6.jpg"
														 onclick="location.href='colDetail'">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="#">콜라보레이션 타이틀</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; background-color: #666666; color: white;">당선작
														발표</div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 60px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6"
																style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 4 끝-->

						<!-- 콘텐츠 5 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<img src="/images/collaboration/col/planning8.jpg"
														 onclick="location.href='colDetail'">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="#">콜라보레이션 타이틀</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; background-color: #666666; color: white;">당선작
														발표</div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 60px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6"
																style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 5 끝-->

						<!-- 콘텐츠 6 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<img src="/images/collaboration/col/planning7.jpg"
														 onclick="location.href='colDetail'">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="#">콜라보레이션 타이틀</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; background-color: #666666; color: white;">당선작
														발표</div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 60px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6"
																style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 6 끝-->

						<!-- 콘텐츠 7 시작-->
						<div class="entry col-lg-4 col-md-6">
							<div class="grid-inner shadow-sm card rounded-5">
								<div class="entry-image mb-3">
									<div class="fslider" data-arrows="false"
										data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div>
													<img src="/images/collaboration/col/planning1.jpg"
														 onclick="location.href='colDetail'">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="p-4">
									<h3 class="center" style="margin-bottom: 40px;">
										<a href="#">콜라보레이션 타이틀</a>
									</h3>

									<div class="container clearfix m-2">
										<div class="row justify-content-center">
											<div>
												<div class="d-flex flex-row align-items-center rounded"
													style="margin-bottom: 15px;">
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; background-color: #666666; color: white;">당선작
														발표</div>
													<div
														style="width: 110px; padding: 8px; border: #dfdfdf solid 1px; text-align: center; margin-left: 60px; color: white; background-color: #1bbc9b;">000명
														참여</div>
												</div>
											</div>
										</div>
									</div>

									<hr class="my-4">
									<div class="d-flex align-items-center">
										<a href="#"><img src="/images/collaboration/author.jpg"
											alt="Author" class="rounded-circle" width="38" height="38"></a>
										<div class="entry-meta mt-0">
											<div class="entry-meta"
												style="margin-bottom: 10px; padding-left: 10px;">
												<ul>
													<li><a href="#"><h6 class="mb-1 h6"
																style="display: inline;">Author</h6></a></li>
													<li><i class="icon-calendar3"></i>2021.11.21</li>
													<li><a href="blog-single.html#comments"><i
															class="icon-comments"></i> 13</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 콘텐츠 7 끝-->

					</div>

				</div>
		<%-- 		</c:choose> --%>
				
				
			</div>
		</section>
		<!--Content End-->


		<!-- Go To Top
   ============================================= -->
		<div id="gotoTop" class="icon-angle-up"></div>

		<!-- JavaScripts
   ============================================= -->
		<script src="/js/jquery.js"></script>
		<script src="/js/plugins.min.js"></script>
<!-- Date & Time Picker JS -->
	<script src="/js/components/moment.js"></script>
	<script src="/js/components/timepicker.js"></script>
	<script src="/js/components/datepicker.js"></script>
	

		<!-- Footer Scripts
   ============================================= -->
		<script src="/js/functions.js"></script>


		<script>
			jQuery(document).ready(function($) {
				$('.videoplay-on-hover').hover(function() {
					if ($(this).find('video').length > 0) {
						$(this).find('video').get(0).play();
					}
				}, function() {
					if ($(this).find('video').length > 0) {
						$(this).find('video').get(0).pause();
					}
				});
			});
			
			jQuery(document).ready(function() {

				var element = $(".custom-file");

				element.find('input[type="file"]').change(function(e) {
					var fileName = e.target.files[0].name;
					element.find('.custom-file-label').html(fileName);
				});

				$('#template-contactform').on('formSubmitSuccess', function() {
					setTimeout(function() {
						$('#block-modal-request').magnificPopup('close');
					}, 500);
				});

			});
			
			$(function() {
				
				$('.component-datepicker.default').datepicker({					
					autoclose: true,
					startDate: "today",
					format: "yyyy-mm-dd"
				});

			});

		</script>

		<!-- Footer
         ============================================= -->
		<footer id="footer" class="dark">

			<%@ include file="../include/footer.jsp"%>

		</footer>
		<!-- #footer end -->



		<!-- Go To Top
   ============================================= -->
		<div id="gotoTop" class="icon-angle-up"></div>
	</div>
	<!-- #wrapper end -->


</body>
</html>