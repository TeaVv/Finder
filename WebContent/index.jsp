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

<title>Finder</title>
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

<body id="page-top" data-spy="scroll" data-target=".navbar-custom"
	onload="init()">
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
			<a class="navbar-brand" href="#intro">
				<h1>Finder</h1>
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
				<li><a data-toggle="modal" data-target="#regModal" class="btn">注册</a></li>
				<li><a onclick="btn_login()" class="btn"><span
						id="user_text">登录</span></a></li>
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
							<input type="text" name="login_username" id="login_username"
								required="required" class="form-control input-lg"
								placeholder="用户名" tabindex="3">
						</div>
						<div class="form-group">
							<input type="password" name="login_password" id="login_password"
								required="required" class="form-control input-lg"
								placeholder="登录密码" tabindex="3">
						</div>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<input type="button" onclick="Login()" value="登录"
									style="border-radius: 5px;"
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
							<input type="text" name="reg_username" id="reg_username"
								required="required" class="form-control input-lg"
								placeholder="用户名" tabindex="3">
						</div>
						<div class="form-group">
							<input type="password" name="reg_password" id="reg_password"
								required="required" class="form-control input-lg"
								placeholder="登录密码" tabindex="3">
						</div>
						<div class="form-group">
							<input type="password" name="password_confirmation"
								required="required" id="password_confirmation"
								class="form-control input-lg" placeholder="确认密码" tabindex="3">
						</div>
						<div class="form-group">
							<input type="email" name="reg_email" id="reg_email"
								required="required" class="form-control input-lg"
								placeholder="邮箱地址" tabindex="4">
						</div>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<input type="button" onclick="Reg()" value="注册"
									style="border-radius: 5px;"
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

	<!-- Section: User -->
	<div class="modal fade" id="UserDetailModal" tabindex="-1"
		role="dialog" aria-labelledby="UserDetailModal" aria-hidden="true"
		data-backdrop="false" position="fixed">
		<div class="modal-dialog" style="width: 50%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="UserDetailModalLabal"
						style="text-align: center;">详细信息</h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<h4>
									<a>用户名</a>
								</h4>
								<p id="detail_username"></p>
								<h4 style="padding-top: 30px">
									<a>邮箱</a>
								</h4>
								<p id="detail_email" style="padding-bottom: 50px"></p>
								<a class="btn btn-skin" onclick="addFriend()"> <span
									style="font-family: Microsoft YaHei;" id="btn_addFriend"></span>
								</a> &nbsp;&nbsp;
								<a class="btn btn-skin" onclick="Chat()" id="btn_chat"> <span
									style="font-family: Microsoft YaHei;" >私信</span>
								</a>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
								<a><p>好友列表</p></a>
								<table class="table table-responsive" style="width: 100%"
									border="0">
									<tr id="friend_tr1">
										<td width="80%"
											style="padding-left: 50px; vertical-align: middle;"><a
											style="cursor: pointer;"
											onclick="showUserDetail('friend_username1')">
												<p id="friend_username1"></p>
										</a></td>
										<td></td>
									</tr>
									<tr id="friend_tr2">
										<td width="80%"
											style="padding-left: 50px; vertical-align: middle;"><a
											style="cursor: pointer;"
											onclick="showUserDetail('friend_username2')">
												<p id="friend_username2"></p>
										</a></td>
										<td></td>
									</tr>
									<tr id="friend_tr3">
										<td width="80%"
											style="padding-left: 50px; vertical-align: middle;"><a
											style="cursor: pointer;"
											onclick="showUserDetail('friend_username3')">
												<p id="friend_username3"></p>
										</a></td>
										<td></td>
									</tr>
									<tr id="friend_tr4">
										<td width="80%"
											style="padding-left: 50px; vertical-align: middle;"><a
											style="cursor: pointer;"
											onclick="showUserDetail('friend_username4')">
												<p id="friend_username4"></p>
										</a></td>
										<td></td>
									</tr>
								</table>
								<div style="text-align: center">
									<a style="cursor: pointer;" id="last_friend_list"
										onclick="gotolastFriendList('detail_username')">上一页</a>&nbsp;
									<a style="cursor: pointer;" id="next_friend_list"
										onclick="gotonextFriendList('detail_username')">下一页</a>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="ChatModal" tabindex="-1" role="dialog"
		aria-labelledby="ChatModalLabal" aria-hidden="true"
		data-backdrop="false" position="fixed">
		<div class="modal-dialog" style="width: 90%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="ChatModalLabal"
						style="text-align: center;"></h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12 col-md-12 col-sm-12">
								<table class="table table-responsive table-condensed">
									<tbody>
										<tr id="chat_tr1">
											<input type="hidden" id="chatid_tr1">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('chat_username1')"
												style="cursor: pointer;" id="chat_username1"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<div><p id="chat_text1"></p></div>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="chat_time1"></small></td>
										</tr>
										<tr id="chat_tr2">
											<input type="hidden" id="chatid_tr2">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('chat_username2')"
												style="cursor: pointer;" id="chat_username2"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<div><p id="chat_text2"></p></div>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="chat_time2"></small></td>
										</tr>
										<tr id="chat_tr3">
											<input type="hidden" id="chatid_tr3">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('chat_username3')"
												style="cursor: pointer;" id="chat_username3"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<div><p id="chat_text3"></p></div>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="chat_time3"></small></td>
										</tr>
										<tr id="chat_tr4">
											<input type="hidden" id="chatid_tr4">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('chat_username4')"
												style="cursor: pointer;" id="chat_username4"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<div><p id="chat_text4"></p></div>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="chat_time4"></small></td>
										</tr>
										<tr id="chat_tr5">
											<input type="hidden" id="chatid_tr5">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('chat_username5')"
												style="cursor: pointer;" id="chat_username5"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<div><p id="chat_text5"></p></div>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="chat_time5"></small></td>
										</tr>
										<tr>
											<td wdith="100%" colspan="3"></td>
										</tr>
									</tbody>
								</table>
								<div style="text-align: center">
									<a style="cursor: pointer;" onclick="gotolastChatRecordList()">上一页</a>&nbsp;
									<a style="cursor: pointer;" onclick="gotonextChatRecordList()">下一页</a>
								</div>
								<div class="col-md-12 col-sm-12 col-lg-12"
									style="padding-top: 20px">
									<div class="form-group">
										<label for="name">我要私信</label>
										<textarea name="chat_text" id="chat_text"
											class="form-control" rows="9" cols="25" required="required"
											placeholder="Enter Message"></textarea>
									</div>
								</div>
								<div class="col-md-12 col-sm-12 col-lg-12">
									<a class="btn btn-skin pull-right" id="btnAddChatRecord"
										onclick="addChatRecord()"> <span
										style="font-family: Mirosoft Yahei; font-weight: bold;">发送</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- /Section: User -->
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
		data-backdrop="false" position="fixed">
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
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc1name')"> <img id="pc1img"
														alt="" class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc1name" name="pc1name"></p>
														<p id="pc1price" name="pc1price"></p>
													</a>
												</div>
												<div class="col-lg-4">
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc2name')"> <img id="pc2img"
														alt="" class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc2name" name="pc2name"></p>
														<p id="pc2price" name="pc2price"></p>
													</a>
												</div>
												<div class="col-lg-3 ">
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc3name')"> <img id="pc3img"
														alt="" class="img-responsive img-rounded"
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
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc4name')"> <img id="pc4img"
														alt="" class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc4name" name="pc4name"></p>
														<p id="pc4price" name="pc4price"></p>
													</a>
												</div>
												<div class="col-lg-4">
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc5name')"> <img id="pc5img"
														alt="" class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc5name" name="pc5name"></p>
														<p id="pc5price" name="pc5price"></p>
													</a>
												</div>
												<div class="col-lg-3 ">
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc6name')"> <img id="pc6img"
														alt="" class="img-responsive img-rounded"
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
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc7name')"> <img id="pc7img"
														alt="" class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc7name" name="pc7name"></p>
														<p id="pc7price" name="pc7price"></p>
													</a>
												</div>
												<div class="col-lg-4">
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc8name')"> <img id="pc8img"
														alt="" class="img-responsive img-rounded"
														style="width: 150px; height: 150px; margin: auto;" /><br>
														<br>
														<p id="pc8name" name="pc8name"></p>
														<p id="pc8price" name="pc8price"></p>
													</a>
												</div>
												<div class="col-lg-3 ">
													<a style="cursor: pointer;"
														onclick="showPcDetail('pc9name')"> <img id="pc9img"
														alt="" class="img-responsive img-rounded"
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
	<div class="modal fade" id="pcDetailModal" tabindex="-1" role="dialog"
		aria-labelledby="pcDetailModalLabal" aria-hidden="true"
		data-backdrop="false" position="fixed">
		<div class="modal-dialog" style="width: 90%; text-align: center;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="pcDetailModalLabal"
						style="text-align: center;"></h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row" style="height: 50%">
							<div class="col-lg-4 col-md-4 col-sm-4">
								<img id="pc_img0" alt="" class="img-responsive img-rounded"
									style="width: 80%" data-action="zoom" />
								<div class="row" style="margin-top: 10px">
									<div class="col-lg-3 col-md-3 col-sm-3"
										style="margin-right: 15px">
										<a style="cursor: pointer;"
											onclick="change('pc_img0','pc_img1')"> <img id="pc_img1"
											alt="" class="img-responsive img-rounded"
											style="width: 100%; height: 100%;" />
										</a>
									</div>
									<div class="col-lg-3 col-md-3 col-sm-3"
										style="margin-right: 15px">
										<a style="cursor: pointer;"
											onclick="change('pc_img0','pc_img2')"> <img id="pc_img2"
											alt="" class="img-responsive img-rounded"
											style="width: 100%; height: 100%;" />
										</a>
									</div>
									<div class="col-lg-3 col-md-3 col-sm-3"
										style="margin-right: 15px">
										<a style="cursor: pointer;"
											onclick="change('pc_img0','pc_img3')"> <img id="pc_img3"
											alt="" class="img-responsive img-rounded"
											style="width: 100%; height: 100%;" />
										</a>
									</div>
								</div>
							</div>
							<div class="col-lg-8 col-md-8 col-sm-8">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr class="active">
												<th>中央处理器</th>
												<th>核心架构</th>
												<th>核心数量</th>
												<th>显卡</th>
												<th>显存</th>
												<th>内存</th>
												<th>内存类型</th>
											</tr>
										</thead>
										<tbody>
											<tr style="text-align: left">
												<td id="pc_cpu_model"></td>
												<td id="pc_cpu_struct"></td>
												<td id="pc_cpu_core"></td>
												<td id="pc_gpu_model"></td>
												<td id="pc_gpu_capacity"></td>
												<td id="pc_memory_capacity"></td>
												<td id="pc_memory_type"></td>
											<tr>
										</tbody>
									</table>
								</div>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr class="active">
												<th>硬盘</th>
												<th>硬盘容量</th>
												<th>屏幕尺寸</th>
												<th>分辨率</th>
												<th>屏幕类型</th>
												<th>光驱</th>
												<th>摄像头</th>
											</tr>
										</thead>
										<tbody>
											<tr style="text-align: left">
												<td id="pc_harddisk_type"></td>
												<td id="pc_harddisk_capacity"></td>
												<td id="pc_display_size"></td>
												<td id="pc_display_resolution"></td>
												<td id="pc_display_type"></td>
												<td id="pc_cd"></td>
												<td id="pc_camera"></td>
											<tr>
										</tbody>
									</table>
								</div>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr class="active">
												<th>无线网卡</th>
												<th>蓝牙</th>
												<th>读卡器</th>
												<th>USB</th>
												<th>重量</th>
												<th>三维</th>
												<th>价格</th>
											</tr>
										</thead>
										<tbody>
											<tr style="text-align: left">
												<td id="pc_wireless"></td>
												<td id="pc_bluetooth"></td>
												<td id="pc_cardreader"></td>
												<td id="pc_usb"></td>
												<td id="pc_weight"></td>
												<td id="pc_dimension"></td>
												<td id="pc_price"></td>
											<tr>
										</tbody>
									</table>
								</div>
							</div>
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
										<a style="cursor: pointer;"
											onclick="showNewsDetail('news1title')"> <img
											id="news1img" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<div class="row">
											<a style="cursor: pointer;"
												onclick="showNewsDetail('news1title')">
												<h3 id="news1title"></h3>
											</a>
										</div>
										<div class="row">
											<a style="cursor: pointer;"
												onclick="showNewsDetail('news1title')">
												<p style="height: 150px;" id="news1tip"></p>
											</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Quote 2 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a style="cursor: pointer;"
											onclick="showNewsDetail('news2title')"> <img
											id="news2img" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">
										<div class="row">
											<a style="cursor: pointer;"
												onclick="showNewsDetail('news2title')">
												<h3 id="news2title"></h3>
											</a>
										</div>
										<div class="row">
											<a style="cursor: pointer;"
												onclick="showNewsDetail('news2title')">
												<p style="height: 150px;" id="news2tip"></p>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Quote 3 -->
							<div class="item">
								<div class="row">
									<div class="col-sm-offset-1 col-sm-2 text-center">
										<a style="cursor: pointer;"
											onclick="showNewsDetail('news3title')"> <img
											id="news3img" alt="" class="img-responsive img-circle"
											style="width: 150px; height: 150px;" />
										</a>
									</div>
									<div class="col-sm-8">

										<div class="row">
											<a style="cursor: pointer;"
												onclick="showNewsDetail('news3title')">
												<h3 id="news3title"></h3>
											</a>
										</div>
										<div class="row">
											<a style="cursor: pointer;"
												onclick="showNewsDetail('news3title')">
												<p style="height: 150px;" id="news3tip"></p>
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
						style="text-align: center;"></h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-3 col-md-3 col-sm-3">
								<ul style="list-style: none;">
									<li style="margin-bottom: 10px"><img id="news_img1" alt=""
										class="img-responsive img-rounded"
										style="width: 100%; height: 100%;" data-action="zoom" /></li>
									<li style="margin-bottom: 10px"><img id="news_img2" alt=""
										class="img-responsive img-rounded"
										style="width: 100%; height: 100%;" data-action="zoom" /></li>
									<li style="margin-bottom: 10px"><img id="news_img3" alt=""
										class="img-responsive img-rounded"
										style="width: 100%; height: 100%;" data-action="zoom" /></li>
								</ul>
							</div>
							<div class="col-xs-9 col-md-9 col-sm-9">
								<p id="news_text"></p>
							</div>
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
			<div class="row" style="margin-bottom: 80px; margin-top: 20px">
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">中央处理器</h4>
					<select id="cpu" name="cpu" class="form-control">
						<option value="">任意</option>
						<option value="i3">i3</option>
						<option value="i5">i5</option>
						<option value="i7">i7</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">显卡</h4>
					<select id="gpu" name="gpu" class="form-control">
						<option value="">任意</option>
						<option value="Nvidia Geforce 710M">Nvidia Geforce 710M</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">内存容量</h4>
					<select id="ram" name="ram" class="form-control">
						<option value="">任意</option>
						<option value="2G">2G</option>
						<option value="4G">4G</option>
						<option value="8G">8G</option>
						<option value="16G">16G</option>
						<option value="32G">32G</option>
					</select>
				</div>
			</div>
			<div class="row" style="margin-bottom: 80px;">
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">硬盘容量</h4>
					<select id="harddisk" name="harddisl" class="form-control">
						<option value="">任意</option>
						<option value="500G">500G</option>
						<option value="750G">750G</option>
						<option value="1T">1T</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">尺寸</h4>
					<select id="size" name="size" class="form-control">
						<option value="">任意</option>
						<option value="13.3">13.3</option>
						<option value="15.6">15.6</option>
						<option value="17.3">17.3</option>
					</select>
				</div>
				<div class="col-lg-4 col-xs-4 col-md-4">
					<h4 style="text-align: center;">价格</h4>
					<select id="price" name="price" class="form-control">
						<option value="">任意</option>
						<option value="0">0-999</option>
						<option value="1000">1000-1999</option>
						<option value="2000">2000-2999</option>
						<option value="3000">3000-3999</option>
						<option value="4000">4000-4999</option>
						<option value="5000">5000-5999</option>
						<option value="6000">6000-6999</option>
						<option value="7000">7000-7999</option>
						<option value="8000">8000-8999</option>
						<option value="9000">9000-9999</option>
						<option value="10000">10000及以上</option>

					</select>
				</div>
			</div>
			<div class="row">
				<div class="wow bounceInDown" data-wow-delay="1.2s">
					<button type="button" class="btn btn-primary btn-lg btn-block"
						style="border-radius: 5px;" onclick="find()">
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
			<div class="col-lg-7 col-lg-offset-1 col-md-9 col-sm-9">
				<table class="table table-hover table-responsive table-condensed">
					<tbody>
						<tr height="90px" id="bbs_tr1">
							<input type="hidden" id="bbsid_tr1">
							<td width="15%" colspan="2" id="bbs_num1"></td>
							<td width="70%" style="text-align: left"><a
								style="cursor: pointer;" onclick="ShowBBSDetail('bbsid_tr1')">
									<strong id="bbs_title1"></strong><br> <br>
							</a> <small id="bbs_tip1"></small></td>
							<td width="15%" style="text-align: right"><a
								id="bbs_username1" style="cursor: pointer;"
								onclick="showUserDetail('bbs_username1')"></a><br> <br>
								<span id="bbs_time1"></span></td>
						</tr>
						<tr height="90px" id="bbs_tr2">
							<input type="hidden" id="bbsid_tr2">
							<td width="15%" colspan="2" id="bbs_num2"></td>
							<td width="70%" style="text-align: left"><a
								style="cursor: pointer;" onclick="ShowBBSDetail('bbsid_tr2')">
									<strong id="bbs_title2"></strong><br> <br>
							</a> <small id="bbs_tip2"></small></td>
							<td width="15%" style="text-align: right"><a
								id="bbs_username2" style="cursor: pointer;"
								onclick="showUserDetail('bbs_username2')"></a><br> <br>
								<span id="bbs_time2"></span></td>
						</tr>
						<tr height="90px" id="bbs_tr3">
							<input type="hidden" id="bbsid_tr3">
							<td width="15%" colspan="2" id="bbs_num3"></td>
							<td width="70%" style="text-align: left"><a
								style="cursor: pointer;" onclick="ShowBBSDetail('bbsid_tr3')">
									<strong id="bbs_title3"></strong><br> <br>
							</a> <small id="bbs_tip3"></small></td>
							<td width="15%" style="text-align: right"><a
								id="bbs_username3" style="cursor: pointer;"
								onclick="showUserDetail('bbs_username3')"></a><br> <br>
								<span id="bbs_time3"></span></td>
						</tr>
						<tr height="90px" id="bbs_tr4">
							<input type="hidden" id="bbsid_tr4">
							<td width="15%" colspan="2" id="bbs_num4"></td>
							<td width="70%" style="text-align: left"><a
								style="cursor: pointer;" onclick="ShowBBSDetail('bbsid_tr4')">
									<strong id="bbs_title4"></strong><br> <br>
							</a> <small id="bbs_tip4"></small></td>
							<td width="15%" style="text-align: right"><a
								id="bbs_username4" style="cursor: pointer;"
								onclick="showUserDetail('bbs_username4')"></a><br> <br>
								<span id="bbs_time4"></span></td>
						</tr>
						<tr height="90px" id="bbs_tr5">
							<input type="hidden" id="bbsid_tr5">
							<td width="15%" colspan="2" id="bbs_num5"></td>
							<td width="70%" style="text-align: left"><a
								style="cursor: pointer;" onclick="ShowBBSDetail('bbsid_tr5')">
									<strong id="bbs_title5"></strong><br> <br>
							</a> <small id="bbs_tip5"></small></td>
							<td width="15%" style="text-align: right"><a
								id="bbs_username5" style="cursor: pointer;"
								onclick="showUserDetail('bbs_username5')"></a><br> <br>
								<span id="bbs_time5"></span></td>
						</tr>
						<tr>
							<td wdith="100%" colspan="4"></td>
						</tr>
					</tbody>
				</table>
				<div style="text-align: center">
					<a style="cursor: pointer;" onclick="gotolastBBSList()">上一页</a>&nbsp;
					<a style="cursor: pointer;" onclick="gotonextBBSList()">下一页</a>
				</div>
			</div>
			<div class="col-lg-2 col-lg-offset-1 col-md-3 col-sm-3"
				style="text-align: center">
				<button type="button" class="btn btn-primary btn-lg btn-block"
					style="border-radius: 5px; width: 50%;" data-toggle="modal"
					data-target="#AddbbsModal">
					<span style="font-family: Mirosoft Yahei; font-weight: bold;">
						我也要发 </span>
			</div>
		</div>
	</div>
	</section>
	<div class="modal fade" id="bbsModal" tabindex="-1" role="dialog"
		aria-labelledby="bbsModalLabal" aria-hidden="true"
		data-backdrop="false" position="fixed">
		<div class="modal-dialog" style="width: 90%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="bbsModalLabal"
						style="text-align: center;"></h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-12 col-md-12 col-sm-12">
								<table class="table table-responsive table-condensed">
									<tbody>
										<input type="hidden" id="bbsid">
										<input type="hidden" id="bbstr_id">
										<tr id="bbstext_tr1">
											<input type="hidden" id="bbstextid_tr1">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('bbstext_username1')"
												style="cursor: pointer;" id="bbstext_username1"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<div><p id="bbstext_text1"></p></div>
												
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="bbstext_time1"></small></td>
										</tr>
										<tr id="bbstext_tr2">
										<input type="hidden" id="bbstextid_tr2">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('bbstext_username2')"
												style="cursor: pointer;" id="bbstext_username2"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<p id="bbstext_text2"></p>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="bbstext_time2"></small></td>
										</tr>
										<tr id="bbstext_tr3">
										<input type="hidden" id="bbstextid_tr3">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('bbstext_username3')"
												style="cursor: pointer;" id="bbstext_username3"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<p id="bbstext_text3"></p>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="bbstext_time3"></small></td>
										</tr>
										<tr id="bbstext_tr4">
										<input type="hidden" id="bbstextid_tr4">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('bbstext_username4')"
												style="cursor: pointer;" id="bbstext_username4"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<p id="bbstext_text4"></p>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="bbstext_time4"></small></td>
										</tr>
										<tr id="bbstext_tr5">
										<input type="hidden" id="bbstextid_tr5">
											<td width="15%"
												style="text-align: center; vertical-align: middle;"><a
												onclick="showUserDetail('bbstext_username5')"
												style="cursor: pointer;" id="bbstext_username5"></a></td>
											<td style="text-align: left; vertical-align: middle;"
												width="70%">
												<p id="bbstext_text5"></p>
											</td>
											<td width="15%"
												style="text-align: right; vertical-align: middle;"><small
												id="bbstext_time5"></small></td>
										</tr>
										<tr>
											<td wdith="100%" colspan="3"></td>
										</tr>
									</tbody>
								</table>
								<div style="text-align: center">
									<a style="cursor: pointer;" onclick="gotolastBBSTextList()">上一页</a>&nbsp;
									<a style="cursor: pointer;" onclick="gotonextBBSTextList()">下一页</a>
								</div>
								<div class="col-md-12 col-sm-12 col-lg-12"
									style="padding-top: 20px">
									<div class="form-group">
										<label for="name">我要留言</label>
										<textarea name="BBSText_text" id="BBSText_text"
											class="form-control" rows="9" cols="25" required="required"
											placeholder="Enter Message"></textarea>
									</div>
								</div>
								<div class="col-md-12 col-sm-12 col-lg-12">
									<a class="btn btn-skin pull-right" id="btnAddBBSText"
										onclick="addBBSText()"> <span
										style="font-family: Mirosoft Yahei; font-weight: bold;">发表留言</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="AddbbsModal" tabindex="-1" role="dialog"
		aria-labelledby="AddbbsModalLabal" aria-hidden="true"
		data-backdrop="false" position="fixed">
		<div class="modal-dialog" style="width: 90%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">x</span>
					</button>
					<h2 class="modal-title" id="AddbbsModalLabal"
						style="text-align: center;">发布新帖</h2>
				</div>
				<div style="padding: 5px;">
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-lg-12">
								<div class="form-group">
									<label for="name">标题</label> <input type="text"
										class="form-control" id="add_title" placeholder="不超过40字"
										required="required" />
								</div>
								<div class="form-group">
									<label for="name">描述</label> <input type="text"
										class="form-control" id="add_tip" placeholder="不超过80字"
										required="required" />
								</div>
							</div>
							<div class="col-md-12 col-sm-12 col-lg-12">
								<div class="form-group">
									<label for="name">正文</label>
									<textarea name="add_text" id="add_text" class="form-control"
										rows="7" cols="25" required="required"
										placeholder="Enter Message"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<a class="btn btn-skin pull-right" id="btnaddBBS"
									onclick="addBBS()"> <span
									style="font-family: Mirosoft Yahei; font-weight: bold;">发布帖子</span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
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
						<form id="contact-form">
							<div class="row">
								<div class="col-md-5 col-sm-5 col-lg-5">
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
											<option value="support">合作</option>
											<option value="suggestions">建议</option>
											<option value="product">产品支持</option>
										</select>
									</div>
								</div>
								<div class="col-md-7 col-sm-7 col-lg-7">
									<div class="form-group">
										<label for="name"> 信息</label>
										<textarea name="message" id="message" class="form-control"
											rows="9" cols="25" required="required"
											placeholder="Enter Message"></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<a class="btn btn-skin pull-right" id="btnContactUs"
										onclick="ContactUs()"> <span
										style="font-family: Mirosoft Yahei; font-weight: bold;">发送</span>
									</a>
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
	<script type="text/javascript" src="js/myjs.js"></script>

</body>

</html>