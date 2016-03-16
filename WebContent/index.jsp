<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>未命名</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<!-- Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="css/animate.css" rel="stylesheet" />
<!-- Squad theme CSS -->
<link href="css/style.css" rel="stylesheet">
<link href="color/default.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/zoom.css">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div id="preloader">
		<div id="load"></div>
	</div>

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
				<li class="active"><a href="#intro">主页</a></li>
				<li><a href="#news">新闻</a></li>
				<li><a href="#personal">私人订制</a></li>
				<li><a href="#contact">联系我们</a></li>
				<!-- <li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">下拉选项 <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Example menu</a></li>
						<li><a href="#">Example menu</a></li>
						<li><a href="#">Example menu</a></li>
					</ul></li> -->
				<li><a data-toggle="modal" data-target="#loginModal"
					class="btn">登录</a></li>
				<li><a data-toggle="modal" data-target="#regModal" class="btn">注册</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /Sectuon: Reg & Login -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="loginModalLabel" aria-hidden="true"
		data-backdrop="false">
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
							<div class="col-xs-12 col-md-12">
								<input type="submit" value="登录" style="border-radius:5px;"
									class="btn btn-success btn-block btn-lg" tabindex="7">
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
		aria-labelledby="regModalLabel" aria-hidden="true"
		data-backdrop="false">
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
								<input type="submit" value="注册" style="border-radius:5px;"
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
	<!-- /Sectuon: Reg & Login--> <!-- /.container --> </nav>

	<!-- Section: intro -->
	<section id="intro" class="intro">
	<div class="container" style="text-align: center">
		<div class="input-group">
			<input type="text" class="form-control input-lg"
				placeholder="输点什么..."> 
				<span class="input-group-addon btn btn-primary"
				style="font-family: Microsoft YaHei; font-weight: bold;border-radius:5px; font-size:15px;">
				&nbsp;&nbsp;&nbsp;&nbsp;搜&nbsp;索&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
	</div>
	</section>
	<!-- /Section: intro -->



	<!-- Section: News -->
	<section id="news" class="home-section">
	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading text-center">
							<h2>新闻</h2>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="margin-top:30px;">
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
							<!-- <li data-target="#quote-carousel" data-slide-to="3"></li>
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
							<li data-target="#quote-carousel" data-slide-to="19"></li> -->
						</ol>

						<!-- Carousel Slides / Quotes -->
						<div class="carousel-inner">
							<!-- Quote 1 -->
							<div class="item active">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a data-toggle="modal" data-target="#newsModal"> <img
											src="img/team/1.jpg" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<div class="row">
											<a data-toggle="modal" data-target="#newsModal">
												<h4>标题</h4>
											</a>
										</div>
										<div class="row">
											<a data-toggle="modal" data-target="#newsModal">
												<p style="height: 150px;">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit. Ut rutrum elit in arcu
													blandit, eget pretium nisl accumsan. Sed ultricies commodo
													tortor, eu pretium mauris.</p>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Quote 2 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a data-toggle="modal" data-target="#newsModal"> <img
											src="img/team/2.jpg" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<div class="row">
											<a data-toggle="modal" data-target="#newsModal">
												<h4>标题</h4>
											</a>
										</div>
										<div class="row">
											<a data-toggle="modal" data-target="#newsModal">
												<p style="height: 150px;">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit. Ut rutrum elit in arcu
													blandit, eget pretium nisl accumsan. Sed ultricies commodo
													tortor, eu pretium mauris.</p>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Quote 3 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a data-toggle="modal" data-target="#newsModal"> <img
											src="img/team/3.jpg" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<div class="row">
											<a data-toggle="modal" data-target="#newsModal">
												<h4>标题</h4>
											</a>
										</div>
										<div class="row">
											<a data-toggle="modal" data-target="#newsModal">
												<p style="height: 150px;">Lorem ipsum dolor sit amet,
													consectetur adipiscing elit. Ut rutrum elit in arcu
													blandit, eget pretium nisl accumsan. Sed ultricies commodo
													tortor, eu pretium mauris.</p>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Carousel Buttons Next/Prev -->
							<a data-slide="prev" href="#quote-carousel"
								class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
							<a data-slide="next" href="#quote-carousel"
								class="right carousel-control"><i
								class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="newsModal" tabindex="-1" role="dialog"
			aria-labelledby="newsModalLabal" aria-hidden="true"
			data-backdrop="false" position="fixed">
			<div class="modal-dialog" style="width: 90%;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
						</button>
						<h2 class="modal-title" id="newsModalLabal"
							style="text-align: center;">标题</h2>
					</div>
					<div style="padding: 5px;">
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-3 col-md-3 col-sm-3">
									<ul style="list-style: none;">
										<li style="margin-bottom: 10px"><img src="img/team/3.jpg"
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src="img/team/3.jpg"
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src="img/team/3.jpg"
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
									</ul>
								</div class="col-xs-9 col-md-9 col-sm-9">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed
									ultricies commodo tortor, eu pretium mauris.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed
									ultricies commodo tortor, eu pretium mauris.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed
									ultricies commodo tortor, eu pretium mauris.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed
									ultricies commodo tortor, eu pretium mauris.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed
									ultricies commodo tortor, eu pretium mauris.</p>
								<div></div>
							</div>
						</div>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Section: News -->

	<!-- Section: Personal -->
	<section id="personal" class="home-section text-center bg-gray">
	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>私人订制</h2>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 中央处理器  显卡 内存  硬盘 尺寸  价格 -->

	<div class="wow bounceInDown" data-wow-delay="0.8s">
		<div class="container">
			<div class="row" style="margin-bottom: 80px; margin-top:20px">
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">中央处理器</h4>
					<select id="cpu" name="cpu" class="form-control">
						<option>任意</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">显卡</h4>
					<select id="cpu" name="cpu" class="form-control">
						<option>任意</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">内存容量</h4>
					<select id="cpu" name="cpu" class="form-control">
						<option>任意</option>
					</select>
				</div>
			</div>
			<div class="row" style="margin-bottom: 80px;">
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">硬盘容量</h4>
					<select id="cpu" name="cpu" class="form-control">
						<option>任意</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">尺寸</h4>
					<select id="cpu" name="cpu" class="form-control">
						<option>任意</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">价格</h4>
					<select id="cpu" name="cpu" class="form-control">
						<option>任意</option>
					</select>
				</div>
			</div>
			<div class="row" >
					<div class="wow bounceInUp" data-wow-delay="1.2s">
						<button type="button" class="btn btn-primary btn-lg btn-block" style="border-radius:5px;">
						<span style="font-family:Mirosoft Yahei; font-weight:bold; ">
							寻找属于你的它
						</span>
						</button>
					</div>
			</div>
		</div>
	</div>

	</section>
	<!-- /Section: Personal -->

	<!-- Section: contact -->
	<section id="contact" class="home-section text-center">
	<div class="heading-contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>联系我们</h2>
							<i class="fa fa-2x fa-angle-down"></i>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
	<div class="wow bounceInUp" data-wow-delay="0.8s">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="boxed-grey">
					<form id="contact-form" action="">
						<div class="row">
							<div class="col-md-5">
								<div class="form-group">
									<label for="name">姓名</label> <input type="text"
										class="form-control" id="name" placeholder="Enter Name"
										required="required" />
								</div>
								<div class="form-group">
									<label for="email"> 邮箱地址</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span> <input
											type="email" class="form-control" id="email"
											placeholder="Enter Email" required="required" />
									</div>
								</div>
								<div class="form-group">
									<label for="subject"> 目的</label> <select id="subject"
										name="subject" class="form-control" required="required">
										<option value="na" selected="">请选择一个：</option>
										<option value="service">合作</option>
										<option value="suggestions">建议</option>
										<option value="product">产品支持</option>
									</select>
								</div>
							</div>
							<div class="col-md-7">
								<div class="form-group">
									<label for="name"> 信息</label>
									<textarea name="message" id="message" class="form-control"
										rows="9" cols="25" required="required" placeholder="Message"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<button type="submit" class="btn btn-skin pull-right"
									id="btnContactUs">
									<span style="font-family:Mirosoft Yahei; font-weight:bold; ">发送</span>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<!-- <div class="col-lg-4">
				<div class="widget-contact">
					<h5>我们的信息</h5>

					<address>
						<strong>NOVA</strong><br> 嘉陵江东路777号<br> 山东省青岛市黄岛区<br> <abbr
							title="Phone">P:</abbr> 18560469132
					</address>

					<address>
						<strong>Email</strong><br> <a href="mailto:#">email.name@example.com</a>
					</address>
					<address>
						<strong>We're on social networks</strong><br>
						<ul class="company-social">
							<li class="social-facebook"><a href="#" target="_blank"><i
									class="fa fa-facebook"></i></a></li>
							<li class="social-twitter"><a href="#" target="_blank"><i
									class="fa fa-twitter"></i></a></li>
							<li class="social-dribble"><a href="#" target="_blank"><i
									class="fa fa-dribbble"></i></a></li>
							<li class="social-google"><a href="#" target="_blank"><i
									class="fa fa-google-plus"></i></a></li>
						</ul>
					</address>

				</div>
			</div> -->
		</div>
	</div>
	</div>
	</section>
	<!-- /Section: contact -->

	<!-- <footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle"> <i
							class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
				</div>
				<p>&copy;Copyright 2014 - Squad. All rights reserved.</p>
				<p>
					<a
						style="color: #FFF; font-family: 'microsoft yahei', Arial, sans-serif;"
						href="http://www.gbtags.com/gb/share/3796.htm">下载地址：极客标签</a>
				</p>
			</div>
		</div>
	</div>
	</footer> -->

	<!-- Core JavaScript Files -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/zoom.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="js/custom.js"></script>


	<script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3Fac45a0f68a119fbe4d1c4c3ac3044dbd' type='text/javascript'%3E%3C/script%3E"));
		
		var a = $('<div class="modal-measure-scrollbar"/>')
				.prependTo($("body")), b = $('<div class="inner"/>')
				.appendTo(a), c = a.width() - b.width();
		a.remove();
		$("head").append(
				'<style id="scrollbar-width"> .compensate-for-scrollbar{ margin-right:'
						+ c + 'px } </style>');
		
		  $(document.body).css({
			   "overflow-x":"hidden",
			   "overflow-y":"hidden"
			 }); 
	</script>

</body>

</html>