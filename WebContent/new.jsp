<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>news</title>
<link rel="stylesheet"
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
<!-- Fonts -->
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" />
<!-- Squad theme CSS -->
<link href="css/style.css" rel="stylesheet">
<link href="color/default.css" rel="stylesheet">
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- <div id="preloader">
	  <div id="load"></div>
	</div>  -->

	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-main-collapse">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="index.html">
				<h1>未命名</h1>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div
			class="collapse navbar-collapse navbar-right navbar-main-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="./index.jsp#intro">主页</a></li>
				<li><a href="#news">新闻</a></li>
				<li><a href="#service">服务</a></li>
				<li><a href="#contact">联系我们</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">下拉选项 <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Example menu</a></li>
						<li><a href="#">Example menu</a></li>
						<li><a href="#">Example menu</a></li>
					</ul></li>
				<li><a data-toggle="modal" data-target="#loginModal"
					class="btn">登录</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
	<!-- /Sectuon: Reg & Login -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h1 class="modal-title" id="loginModalLabel"
						style="text-align: center;">登录</h1>
				</div>
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<form role="form" anction="">
						<br>
						<hr class="colorgraph">
						<div class="form-group">
							<input type="text" name="user_name" id="user_name"
								class="form-control input-lg" placeholder="用户名" tabindex="3">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control input-lg" placeholder="登录密码" tabindex="3">
						</div>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-6 col-md-6">
								<input type="submit" value="登录"
									class="btn btn-success btn-block btn-lg" tabindex="7">
							</div>
							<div class="col-xs-6 col-md-6">
								<a data-toggle="modal" data-target="#regModal"
									class="btn btn-primary btn-block btn-lg">注册</a>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
	<div class="modal fade" id="regModal" tabindex="-1" role="dialog"
		aria-labelledby="regModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h1 class="modal-title" id="regModalLabel"
						style="text-align: center;">注册</h1>
				</div>
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<form role="form" action="">
						<br>
						<hr class="colorgraph">
						<div class="form-group">
							<input type="text" name="user_name" id="user_name"
								class="form-control input-lg" placeholder="用户名" tabindex="3">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password"
								class="form-control input-lg" placeholder="登录密码" tabindex="3">
						</div>
						<div class="form-group">
							<input type="password" name="password_confirmation"
								id="password_confirmation" class="form-control input-lg"
								placeholder="确认密码" tabindex="3">
						</div>
						<div class="form-group">
							<input type="email" name="email" id="email"
								class="form-control input-lg" placeholder="邮箱地址" tabindex="4">
						</div>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<input type="submit" value="注册"
									class="btn btn-primary btn-block btn-lg" tabindex="7">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
			<!-- /.modal-content -->
		</div>
	</div>
	<!-- /Sectuon: Reg & Login-->

	<!-- Section: News -->
	<section id="news" class="home-section text-center">
	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>新闻</h2>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
					<div class="carousel slide" data-ride="carousel"
						id="quote-carousel">
						<!-- Bottom Carousel Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#quote-carousel" data-slide-to="0"
								class="active"></li>
							<li data-target="#quote-carousel" data-slide-to="1"></li>
							<li data-target="#quote-carousel" data-slide-to="2"></li>
							<li data-target="#quote-carousel" data-slide-to="3"></li>
							<li data-target="#quote-carousel" data-slide-to="4"></li>
							<li data-target="#quote-carousel" data-slide-to="5"></li>
							<li data-target="#quote-carousel" data-slide-to="6"></li>
							<li data-target="#quote-carousel" data-slide-to="7"></li>
							<li data-target="#quote-carousel" data-slide-to="8"></li>
							<li data-target="#quote-carousel" data-slide-to="9"></li>
							<li data-target="#quote-carousel" data-slide-to="10"></li>
							<li data-target="#quote-carousel" data-slide-to="11"></li>
							<li data-target="#quote-carousel" data-slide-to="12"></li>
							<li data-target="#quote-carousel" data-slide-to="13"></li>
							<li data-target="#quote-carousel" data-slide-to="14"></li>
							<li data-target="#quote-carousel" data-slide-to="15"></li>
							<li data-target="#quote-carousel" data-slide-to="16"></li>
							<li data-target="#quote-carousel" data-slide-to="17"></li>
							<li data-target="#quote-carousel" data-slide-to="18"></li>
							<li data-target="#quote-carousel" data-slide-to="19"></li>
						</ol>

						<!-- Carousel Slides / Quotes -->
						<div class="carousel-inner">
							<!-- Quote 1 -->
							<div class="item active">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a data-toggle="modal" data-target="#myModal"> <img
											src="img/team/1.jpg" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a data-toggle="modal" data-target="#myModal">
											<p style="height: 150px;">Neque porro quisquam est qui
												dolorem ipsum quia dolor sit amet, consectetur, adipisci
												velit!</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 2 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/2.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Etiam auctor nec lacus ut
												tempor. Mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 3 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 4 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 5 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 6 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 7 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 8 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 9 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 10 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 11 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 12 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 13 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 14 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 15 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 16 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 17 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 18 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 19 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a href="#"> <img src="img/team/3.jpg" alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a href="#">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
							<!-- Quote 20 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a data-toggle="modal" data-target="#newsModal"> <img
											src="img/team/3.jpg" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<a data-toggle="modal" data-target="#newsModal">
											<p style="height: 150px;">Lorem ipsum dolor sit amet,
												consectetur adipiscing elit. Ut rutrum elit in arcu blandit,
												eget pretium nisl accumsan. Sed ultricies commodo tortor, eu
												pretium mauris.</p>
										</a>
									</div>
								</div>
							</div>
						</div>

						<!-- Carousel Buttons Next/Prev -->
						<a data-slide="prev" href="#quote-carousel"
							class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
						<a data-slide="next" href="#quote-carousel"
							class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="newsModal" tabindex="-1" role="dialog"
		aria-labelledby="newsModalLabal" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<!-- <h1 class="modal-title" id="newsModalLabal"
						style="text-align: center;">登录</h1> -->
				</div>
				<div class="col-xs-12 col-md-12 col-sm-12"></div>

				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
				</div>
				<div class="modal-body">在这里添加一些文本</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	</section>
	<!-- /Section: News -->

	<!-- Core JavaScript Files -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="js/custom.js"></script>

	<script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3Fac45a0f68a119fbe4d1c4c3ac3044dbd' type='text/javascript'%3E%3C/script%3E"));
	</script>
</body>
</html>