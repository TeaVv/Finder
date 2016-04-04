<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="cn.teav.model.News"%>
<%@page import="cn.teav.model.PC"%>
<%@page import="java.util.*"%>

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
<%
	/* response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
	response.flushBuffer();
	Cookie killMyCookie = new Cookie("mycookie", null);
	killMyCookie.setMaxAge(0);
	killMyCookie.setPath("/");
	response.addCookie(killMyCookie);
	session.invalidate(); */
	boolean isSearched = (Boolean) request.getAttribute("isSearched");
	News news1 = (News) request.getAttribute("news1");
	News news2 = (News) request.getAttribute("news2");
	News news3 = (News) request.getAttribute("news3");
	/* List<PC> pclist = (ArrayList) request.getAttribute("pclist");
	PC pc1 = null, pc2 = null, pc3 = null, pc4 = null, pc5 = null, pc6 = null, pc7 = null, pc8 = null, pc9 = null;
	pc1 = pclist.get(0);
	pc2 = pclist.get(1);
	pc3 = pclist.get(2);
	pc4 = pclist.get(3);
	pc5 = pclist.get(4);
	pc6 = pclist.get(5);
	pc7 = pclist.get(6);
	pc8 = pclist.get(7);
	pc9 = pclist.get(8);
	System.out.println(pc1.getCpu()); */
%>
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
				<li><a href="#bbs">说点什么</a></li>
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
								<input type="submit" value="登录" style="border-radius: 5px;"
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
								<input type="submit" value="注册" style="border-radius: 5px;"
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
				placeholder="输点什么..." name="search_input" id="search_input">
			<span class="input-group-addon btn btn-primary" onclick="search()"
				style="font-family: Microsoft YaHei; font-weight: bold; border-radius: 5px; font-size: 15px;">
				&nbsp;&nbsp;&nbsp;&nbsp;搜&nbsp;索&nbsp;&nbsp;&nbsp;&nbsp;</span>
		</div>
	</div>
	</section>
	<!-- /Section: intro -->

	<!-- Modal:Answer -->
	<div class="modal fade" id="AnswerModal" tabindex="-1" role="dialog"
		aria-labelledby="AnswerModalLabal" aria-hidden="true"
		data-backdrop="false"
		position="fixed">
		<div class="modal-dialog" style="width: 90%; text-align: center;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="AnswerModalLabal"
						style="text-align: center;">标题</h2>
				</div>

				<div style="padding: 10px;">
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<div class="carousel slide" data-ride="carousel" id="q-carousel"
									data-interval="false">
									<!-- Bottom Carousel Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#q-carousel" data-slide-to="0" class="active"></li>
										<li data-target="#q-carousel" data-slide-to="1"></li>
										<li data-target="#q-carousel" data-slide-to="2"></li>
									</ol>

									<!-- Carousel Slides / Quotes -->
									<div class="carousel-inner">
										<!-- Quote 1 -->
										<div class="item active">
											<div class="row">
												<div class="col-lg-3 col-lg-offset-1">
													<a data-toggle="modal" data-target="#pc1DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc1name" name="pc1name"></p>
														<p id="pc1price" name="pc1price"></p>
													</a>
												</div>
												<div class="col-lg-4">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc2name" name="pc2name"></p>
														<p id="pc2price" name="pc2price"></p>
													</a>
												</div>
												<div class="col-lg-3 ">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc3name" name="pc3name"></p>
														<p id="pc3price" name="pc3price"></p>
													</a>
												</div>
											</div>
										</div>
										<!-- Quote 2 -->
										<div class="item">
											<div class="row">
												<div class="col-lg-3 col-lg-offset-1">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc4name" name="pc4name"></p>
														<p id="pc4price" name="pc4price"></p>
													</a>
												</div>
												<div class="col-lg-4">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc5name" name="pc5name"></p>
														<p id="pc5price" name="pc5price"></p>
													</a>
												</div>
												<div class="col-lg-3 ">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc6name" name="pc6name"></p>
														<p id="pc6price" name="pc6price"></p>
													</a>
												</div>
											</div>
										</div>
										<!-- Quote 3 -->
										<div class="item">
											<div class="row">
												<div class="col-lg-3 col-lg-offset-1">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc7name" name="pc7name"></p>
														<p id="pc7price" name="pc7price"></p>
													</a>
												</div>
												<div class="col-lg-4">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc8name" name="pc8name"></p>
														<p id="pc8price" name="pc8price"></p>
													</a>
												</div>
												<div class="col-lg-3 ">
													<a data-toggle="modal" data-target="#DetailModal"> <img
														src="img/team/1.jpg" alt=""
														class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc9name" name="pc9name"></p>
														<p id="pc9price" name="pc9price"></p>
													</a>
												</div>
											</div>
										</div>
										<!-- Carousel Buttons Next/Prev -->
										<a data-slide="prev" href="#q-carousel"
											class="left carousel-control"
											style="background: none; color: #222; font-size: 2.3em; text-shadow: none; margin-top: 30px;">
											<i class="fa fa-chevron-left"></i>
										</a> <a data-slide="next" href="#q-carousel"
											class="right carousel-control"
											style="background: none; color: #222; font-size: 2.3em; text-shadow: none; margin-top: 30px;">
											<i class="fa fa-chevron-right"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- /Modal:Answer -->

	<!-- Modal:Detail -->
	<div class="modal fade" id="pc1DetailModal" tabindex="-1" role="dialog"
		aria-labelledby="pc1DetailModalLabal" aria-hidden="true"
		data-backdrop="false" position="fixed">
		<div class="modal-dialog" style="width: 90%; text-align: center;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="pc1DetailModalLabal"
						style="text-align: center;"></h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row" style="height: 300px">
							<div class="col-lg-4">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 300px; height: 300px;" data-action="zoom" />
							</div>
							<div class="col-lg-8"></div>
						</div>
						<div class="row" style="margin-top: 10px">
							<div class="col-lg-1" style="margin-right: 15px">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 70px; height: 70px;" />
							</div>
							<div class="col-lg-1" style="margin-right: 15px">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 70px; height: 70px;" />
							</div>
							<div class="col-lg-1" style="margin-right: 15px">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 70px; height: 70px;" />
							</div>
							<div class="col-lg-9"></div>
						</div>

					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="DetailModal" tabindex="-1" role="dialog"
		aria-labelledby="DetailModalLabal" aria-hidden="true"
		data-backdrop="false" position="fixed">
		<div class="modal-dialog" style="width: 90%; text-align: center;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="DetailModalLabal"
						style="text-align: center;">标题</h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row" style="height: 300px">
							<div class="col-lg-4">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 300px; height: 300px;" data-action="zoom" />
							</div>
							<div class="col-lg-8"></div>
						</div>
						<div class="row" style="margin-top: 10px">
							<div class="col-lg-1" style="margin-right: 15px">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 70px; height: 70px;" />
							</div>
							<div class="col-lg-1" style="margin-right: 15px">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 70px; height: 70px;" />
							</div>
							<div class="col-lg-1" style="margin-right: 15px">
								<img src="img/team/3.jpg" alt=""
									class="img-responsive img-rounded"
									style="width: 70px; height: 70px;" />
							</div>
							<div class="col-lg-9"></div>
						</div>

					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- /Modal:Detail -->

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
	<div class="container" style="margin-top: 30px;">
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
										<a data-toggle="modal" data-target="#news1Modal"> <img
											src=<%=news1.getImg1()%> alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<div class="row">
											<a data-toggle="modal" data-target="#news1Modal">
												<h3><%=news1.getTitle()%></h3>
											</a>
										</div>
										<div class="row">
											<a data-toggle="modal" data-target="#news1Modal">
												<p style="height: 150px;"><%=news1.getTip()%></p>
											</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Quote 2 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a data-toggle="modal" data-target="#news2Modal"> <img
											src=<%=news2.getImg1()%> alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<div class="row">
											<a data-toggle="modal" data-target="#news2Modal">
												<h3><%=news2.getTitle()%></h3>
											</a>
										</div>
										<div class="row">
											<a data-toggle="modal" data-target="#news2Modal">
												<p style="height: 150px;"><%=news2.getTip()%></p>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Quote 3 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a data-toggle="modal" data-target="#news3Modal"> <img
											src=<%=news3.getImg1()%> alt=""
											class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">

										<div class="row">
											<a data-toggle="modal" data-target="#news3Modal">
												<h3><%=news3.getTitle()%></h3>
											</a>
										</div>
										<div class="row">
											<a data-toggle="modal" data-target="#news3Modal">
												<p style="height: 150px;"><%=news3.getTip()%></p>
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
		<div class="modal fade" id="news1Modal" tabindex="-1" role="dialog"
			aria-labelledby="news1ModalLabal" aria-hidden="true"
			data-backdrop="false" position="fixed">
			<div class="modal-dialog" style="width: 90%;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
						</button>
						<h2 class="modal-title" id="news1ModalLabal"
							style="text-align: center;"><%=news1.getTitle()%></h2>
					</div>
					<div style="padding: 5px;">
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-3 col-md-3 col-sm-3">
									<ul style="list-style: none;">
										<li style="margin-bottom: 10px"><img src=<%=news1.getImg1()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src=<%=news1.getImg2()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src=<%=news1.getImg3()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
									</ul>
								</div>
								<div class="col-xs-9 col-md-9 col-sm-9">
									<p><%=news1.getText()%></p>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="news2Modal" tabindex="-1" role="dialog"
			aria-labelledby="news2ModalLabal" aria-hidden="true"
			data-backdrop="false" position="fixed">
			<div class="modal-dialog" style="width: 90%;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
						</button>
						<h2 class="modal-title" id="news2ModalLabal"
							style="text-align: center;"><%=news2.getTitle()%></h2>
					</div>
					<div style="padding: 5px;">
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-3 col-md-3 col-sm-3">
									<ul style="list-style: none;">
										<li style="margin-bottom: 10px"><img src=<%=news2.getImg1()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src=<%=news2.getImg2()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src=<%=news2.getImg3()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
									</ul>
								</div>
								<div class="col-xs-9 col-md-9 col-sm-9">
									<p><%=news2.getText()%></p>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="news3Modal" tabindex="-1" role="dialog"
			aria-labelledby="news3ModalLabal" aria-hidden="true"
			data-backdrop="false" position="fixed">
			<div class="modal-dialog" style="width: 90%;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
						</button>
						<h2 class="modal-title" id="news3ModalLabal"
							style="text-align: center;"><%=news3.getTitle()%></h2>
					</div>
					<div style="padding: 5px;">
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-3 col-md-3 col-sm-3">
									<ul style="list-style: none;">
										<li style="margin-bottom: 10px"><img src=<%=news3.getImg1()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src=<%=news3.getImg2()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
										<li style="margin-bottom: 10px"><img src=<%=news3.getImg3()%>
											alt="" class="img-responsive img-rounded"
											style="width: 150px; height: 150px;" data-action="zoom" /></li>
									</ul>
								</div>
								<div class="col-xs-9 col-md-9 col-sm-9">
									<p><%=news3.getText()%></p>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer"></div>
				</div>
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
			<div class="row" style="margin-bottom: 80px; margin-top: 20px">
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
			<div class="row">
				<div class="wow bounceInUp" data-wow-delay="1.2s">
					<button type="button" class="btn btn-primary btn-lg btn-block"
						style="border-radius: 5px;" data-toggle="modal"
						data-target="#AnswerModal">
						<span style="font-family: Mirosoft Yahei; font-weight: bold;">
							寻找属于你的它 </span>
					</button>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /Section: Personal -->

	<!-- Section: BBS -->
	<section id="bbs" class="home-section text-center"
		style="text-align:center; margin:auto;">
	<div class="heading-about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
						<div class="section-heading">
							<h2>说点什么</h2>
							<i class="fa fa-2x fa-angle-down"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="wow bounceInDown" data-wow-delay="0.8s">
		<div class="row" style="font-family: Microsoft YaHei">
			<div class="col-lg-7 col-lg-offset-1">
				<table class="table table-hover table-responsive table-condensed">
					<tbody>
						<tr>
							<td width="15%" colspan="2">回复数量</td>
							<td style="text-align: left"><a data-toggle="modal"
								data-target="#bbsModal"> <strong>标题</strong><br> <br></a>
								<small>正文节选</small></td>
							<td width="15%" style="text-align: left">发帖人<br> <br>
								发帖时间
							</td>
						</tr>
						<tr>
							<td width="15%" colspan="2">回复数量</td>
							<td style="text-align: left"><a data-toggle="modal"
								data-target="#bbsModal"> <strong>标题</strong><br> <br></a>
								<small>正文节选</small></td>
							<td width="15%" style="text-align: left">发帖人<br> <br>
								发帖时间
							</td>
						</tr>
						<tr>
							<td width="15%" colspan="2">回复数量</td>
							<td style="text-align: left"><a data-toggle="modal"
								data-target="#bbsModal"> <strong>标题</strong><br> <br></a>
								<small>正文节选</small></td>
							<td width="15%" style="text-align: left">发帖人<br> <br>
								发帖时间
							</td>
						</tr>
						<tr>
							<td width="15%" colspan="2">回复数量</td>
							<td style="text-align: left"><a data-toggle="modal"
								data-target="#bbsModal"> <strong>标题</strong><br> <br></a>
								<small>正文节选</small></td>
							<td width="15%" style="text-align: left">发帖人<br> <br>
								发帖时间
							</td>
						</tr>
						<tr>
							<td width="15%" colspan="2">回复数量</td>
							<td style="text-align: left;"><a data-toggle="modal"
								data-target="#bbsModal"> <strong>标题</strong><br> <br></a>
								<small>正文节选</small></td>
							<td width="15%" style="text-align: left">发帖人<br> <br>
								发帖时间
							</td>
						</tr>
						<tr>
							<td width="15%" colspan="2">回复数量</td>
							<td style="text-align: left;"><a data-toggle="modal"
								data-target="#bbsModal"> <strong>标题</strong><br> <br></a>
								<small>正文节选</small></td>
							<td width="15%" style="text-align: left">发帖人<br> <br>
								发帖时间
							</td>
						</tr>
						<tr>
							<td width="15%" colspan="2">回复数量</td>
							<td style="text-align: left;"><a data-toggle="modal"
								data-target="#bbsModal"> <strong>标题</strong><br> <br></a>
								<small>正文节选</small></td>
							<td width="15%" style="text-align: left">发帖人<br> <br>
								发帖时间
							</td>
						</tr>
						<tr>
							<td wdith="100%" colspan="4"></td>
						</tr>
					</tbody>
				</table>
				<div style="text-align: center">
					<a href="">1</a> <a href="">2</a> <a href="">3</a> <a href="">4</a>
					<a href="">5</a> <a href="">下一页</a>
				</div>
			</div>
			<div class="col-lg-2 col-lg-offset-1" style="text-align: center">
				<button type="button" class="btn btn-primary btn-lg btn-block"
					style="border-radius: 5px; width: 50%;" data-toggle="modal"
					data-target="#AddBBSModal">
					<span style="font-family: Mirosoft Yahei; font-weight: bold;">
						我也要发 </span>
			</div>
		</div>
	</div>

	</section>
	<!-- Section: /BBS -->

	<!-- Section: contact -->
	<section id="contact" class="home-section text-center bg-gray">
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
										<span style="font-family: Mirosoft Yahei; font-weight: bold;">发送</span>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- /Section: contact -->

	<!-- Core JavaScript Files -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/zoom.js"></script>
	<script src="js/jquery.jqzoom.js"></script>
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
			"overflow-x" : "hidden",
			"overflow-y" : "hidden"
		});

		function search() {
			$.ajax({
				type : "POST",
				url : "SearchServlet",
				data : {
					searchinput : $("#search_input").val()
				},
				dataType : "json",
				success : function(data) {
					    document.getElementById("pc1name").innerHTML=data[0].pcname;
					    document.getElementById("pc1DetailModalLabal").innerHTML=data[0].pcname;
					    document.getElementById("pc2name").innerHTML=data[1].pcname;
					    document.getElementById("pc3name").innerHTML=data[2].pcname;
					    document.getElementById("pc4name").innerHTML=data[3].pcname;
					    document.getElementById("pc5name").innerHTML=data[4].pcname;
					    document.getElementById("pc6name").innerHTML=data[5].pcname;
					    document.getElementById("pc7name").innerHTML=data[6].pcname;
					    document.getElementById("pc8name").innerHTML=data[7].pcname;
					    document.getElementById("pc9name").innerHTML=data[8].pcname;				    
				}
			});
			$("#AnswerModal").modal('show');
		}
		/* 	$(document).on("click", ".newslink", function () {
			     var myBookId = $(this).data('id');
			     $(".modal-header #newsModalLabal").val( myBookId );
			    $('#NewsModal').modal('show');
			}); */
	</script>
</body>

</html>