var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
		: " http://");
document
		.write(unescape("%3Cscript src='"
				+ _bdhmProtocol
				+ "hm.baidu.com/h.js%3Fac45a0f68a119fbe4d1c4c3ac3044dbd' type='text/javascript'%3E%3C/script%3E"));

var a = $('<div class="modal-measure-scrollbar"/>').prependTo($("body")), b = $(
		'<div class="inner"/>').appendTo(a), c = a.width() - b.width();
a.remove();
$("head").append(
		'<style id="scrollbar-width"> .compensate-for-scrollbar{ margin-right:'
				+ c + 'px } </style>');

$(document.body).css({
	// "overflow-x" : "hidden",
	"overflow-y" : "hidden"
});

function setCookie(c_name, value, expiredays) {
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + expiredays);
	document.cookie = c_name + "=" + escape(value)
			+ ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString());
}
function getCookie(c_name) {
	if (document.cookie.length > 0) {
		var c_start = document.cookie.indexOf(c_name + "=");
		if (c_start != -1) {
			c_start = c_start + c_name.length + 1;
			var c_end = document.cookie.indexOf(";", c_start);
			if (c_end == -1)
				c_end = document.cookie.length;
			return unescape(document.cookie.substring(c_start, c_end));
		}
	}
	return "";
}

function clearCookie() {
	var keys = document.cookie.match(/[^ =;]+(?=\=)/g);
	if (keys) {
		for ( var i = keys.length; i--;)
			document.cookie = keys[i] + '=0;expires='
					+ new Date(0).toUTCString();
	}
}

function setNewsDetail(data) {
	document.getElementById("newsModalLabal").innerHTML = data.title;
	document.getElementById("news_img1").src = data.img1;
	document.getElementById("news_img2").src = data.img2;
	document.getElementById("news_img3").src = data.img3;
	document.getElementById("news_text").innerHTML = data.text;
}
function showNewsDetail(newsId) {
	var news_title = document.getElementById(newsId).innerHTML;
	$.ajax({
		type : "POST",
		url : "ShowNewsDetailServlet",
		data : {
			news_title : news_title
		},
		dataType : "json",
		success : function(data) {
			setNewsDetail(data[0]);
		}
	});
	$("#newsModal").modal('show');
}
function setNews(data, news) {
	document.getElementById(news + "img").src = data.img1;
	document.getElementById(news + "title").innerHTML = data.title;
	document.getElementById(news + "tip").innerHTML = data.tip;
}

function getNews() {
	$.ajax({
		type : "POST",
		url : "NewsServlet",
		dataType : "json",
		success : function(data) {
			setNews(data[0], "news1");
			setNews(data[1], "news2");
			setNews(data[2], "news3");
		}
	});
}

function change(toimgId, fromimgId) {
	document.getElementById(toimgId).src = document.getElementById(fromimgId).src;
}
function setAnswer(data, pc) {
	document.getElementById(pc + "name").innerHTML = data.pc_model;
	document.getElementById(pc + "price").innerHTML = "￥" + data.price;
	document.getElementById(pc + "img").src = data.img1;
}
function setDetail(data, pc) {
	document.getElementById(pc + "DetailModalLabal").innerHTML = data.pc_model;
	document.getElementById(pc + "_cpu_model").innerHTML = data.cpu_model;
	document.getElementById(pc + "_cpu_struct").innerHTML = data.cpu_struct;
	document.getElementById(pc + "_cpu_core").innerHTML = data.cpu_core;
	document.getElementById(pc + "_memory_capacity").innerHTML = data.memory_capacity;
	document.getElementById(pc + "_memory_type").innerHTML = data.memory_type;
	document.getElementById(pc + "_harddisk_type").innerHTML = data.harddisk_type;
	document.getElementById(pc + "_harddisk_capacity").innerHTML = data.harddisk_capacity;
	document.getElementById(pc + "_cd").innerHTML = data.cd;
	document.getElementById(pc + "_display_size").innerHTML = data.display_size;
	document.getElementById(pc + "_display_resolution").innerHTML = data.display_resolution;
	document.getElementById(pc + "_display_type").innerHTML = data.display_type;
	document.getElementById(pc + "_gpu_model").innerHTML = data.gpu_model;
	document.getElementById(pc + "_gpu_capacity").innerHTML = data.gpu_capacity;
	document.getElementById(pc + "_camera").innerHTML = data.camera;
	document.getElementById(pc + "_wireless").innerHTML = data.wireless;
	document.getElementById(pc + "_bluetooth").innerHTML = data.bluetooth;
	document.getElementById(pc + "_cardreader").innerHTML = data.cardreader;
	document.getElementById(pc + "_usb").innerHTML = data.usb;
	document.getElementById(pc + "_weight").innerHTML = data.weight;
	document.getElementById(pc + "_dimension").innerHTML = data.dimension;
	document.getElementById(pc + "_price").innerHTML = "￥" + data.price;
	document.getElementById(pc + "_img0").src = data.img1;
	document.getElementById(pc + "_img1").src = data.img1;
	document.getElementById(pc + "_img2").src = data.img2;
	document.getElementById(pc + "_img3").src = data.img3;
}
function search() {
	$.ajax({
		type : "POST",
		url : "SearchServlet",
		data : {
			searchinput : $("#search_input").val()
		},
		dataType : "json",
		success : function(data) {
			setAnswer(data[0], "pc1");
			setAnswer(data[1], "pc2");
			setAnswer(data[2], "pc3");
			setAnswer(data[3], "pc4");
			setAnswer(data[4], "pc5");
			setAnswer(data[5], "pc6");
			setAnswer(data[6], "pc7");
			setAnswer(data[7], "pc8");
			setAnswer(data[8], "pc9");
		}
	});
	$("#AnswerModal").modal('show');
}

function find() {
	var cpu = document.getElementById("cpu").value;
	var gpu = document.getElementById("gpu").value;
	var ram = document.getElementById("ram").value;
	var harddisk = document.getElementById("harddisk").value;
	var size = document.getElementById("size").value;
	var price = document.getElementById("price").value;
	$.ajax({
		type : "POST",
		url : "FindServlet",
		data : {
			cpu : cpu,
			gpu : gpu,
			ram : ram,
			harddisk : harddisk,
			size : size,
			price : price
		},
		dataType : "json",
		success : function(data) {
			setAnswer(data[0], "pc1");
			setAnswer(data[1], "pc2");
			setAnswer(data[2], "pc3");
			setAnswer(data[3], "pc4");
			setAnswer(data[4], "pc5");
			setAnswer(data[5], "pc6");
			setAnswer(data[6], "pc7");
			setAnswer(data[7], "pc8");
			setAnswer(data[8], "pc9");
		}
	});
	$("#AnswerModal").modal('show');
}

function showPcDetail(pcId) {
	var pc_model = document.getElementById(pcId).innerHTML;
	$.ajax({
		type : "POST",
		url : "ShowPcDetailServlet",
		data : {
			pc_model : pc_model
		},
		dataType : "json",
		success : function(data) {
			setDetail(data[0], "pc");
		}
	});
	if (pc_model != "no more pc") {
		$("#pcDetailModal").modal('show');
	}
}

function ContactUs() {
	var name = document.getElementById("name").value;
	var email = document.getElementById("email").value;
	var subject = document.getElementById("subject").value;
	var message = document.getElementById("message").value;
	if (name == "" || email == "" || subject == "" || message == "") {
		alert("不能有空项！");
		return;
	}
	$.ajax({
		type : "POST",
		url : "ContactServlet",
		data : {
			name : name,
			email : email,
			subject : subject,
			message : message
		},
		dataType : "json",
		success : function(data) {
			document.getElementById("name").value = "";
			document.getElementById("email").value = "";
			document.getElementById("message").value = "";
		}
	});
}

function hide(objid) {
	document.getElementById(objid).style.display="none";
}
function show(objid) {
	document.getElementById(objid).style.display="";
}

function Reg() {
	var username = document.getElementById("reg_username").value;
	var password = document.getElementById("reg_password").value;
	var password_confirmation = document
			.getElementById("password_confirmation").value;
	var reg_email = document.getElementById("reg_email").value;
	if (username == "" || password == "" || password_confirmation == ""
			|| reg_email == "") {
		alert('不能有空项！');
		return;
	}
	$.ajax({
		type : "POST",
		url : "RegisterServlet",
		data : {
			username : username,
			password : password,
			password_confirmation : password_confirmation,
			email : reg_email
		},
		dataType : "text",
		success : function(data) {
			if (data == "ok") {
				setCookie("username", username, 365);
				document.location.reload();
			} else {
				if (data == "not_equal") {
					alert("密码与重复密码不一致！");
				} else {
					if (data == "already_have") {
						alert("该用户名已存在！");
					}
				}
			}
		}
	});
}
function Login() {
	var username = document.getElementById("login_username").value;
	var password = document.getElementById("login_password").value;
	if (username == "" || password == "") {
		alert('不能有空项！');
		return;
	}
	$.ajax({
		type : "POST",
		url : "LoginServlet",
		data : {
			username : username,
			password : password
		},
		dataType : "text",
		success : function(data) {
			if (data == "ok") {
				setCookie("username", username, 365);
				document.location.reload();
			} else {
				if (data == "not_equal") {
					alert("用户名或密码错误！");
				}
			}
		}
	});
}
function gotolastFriendList(Id) {
	var username = document.getElementById(Id).innerHTML;
	var first_friend = document.getElementById("friend_username1").innerHTML;
	var name1 = "", name2 = "", name3 = "", name4 = "";
	$.ajax({
		type : "POST",
		url : "GetFriendListServlet",
		data : {
			username : username
		},
		dataType : "json",
		success : function(data) {
			if (data[0] == first_friend) {
				return;
			}
			for ( var i = 0; i < data.length; ++i) {
				if (data[i] == first_friend) {
					if (data[i-1])  name4 = data[i - 1];
					if (data[i-2])  name3 = data[i - 2];
					if (data[i-3])  name2 = data[i - 3];
					if (data[i-4])  name1 = data[i - 4];
				}
			}
			document.getElementById("friend_username1").innerHTML = name1;
			document.getElementById("friend_username2").innerHTML = name2;
			document.getElementById("friend_username3").innerHTML = name3;
			document.getElementById("friend_username4").innerHTML = name4;
			hideId(name1, "friend_tr1");
			hideId(name2, "friend_tr2");
			hideId(name3, "friend_tr3");
			hideId(name4, "friend_tr4");
		}
	});
}
function gotonextFriendList(Id) {
	var username = document.getElementById(Id).innerHTML;
	var last_friend = document.getElementById("friend_username4").innerHTML;
	var name1 = "", name2 = "", name3 = "", name4 = "";
	$.ajax({
		type : "POST",
		url : "GetFriendListServlet",
		data : {
			username : username
		},
		dataType : "json",
		success : function(data) {
			if (last_friend == "" || last_friend == null
					|| last_friend == "undefined"
					|| data[data.length] == last_friend) {
				return;
			}
			for ( var i = 0; i < data.length; ++i) {
				if (data[i] == last_friend) {
					if (data[i+1]) name1 = data[i + 1];
					if (data[i+2]) name2 = data[i + 2];
					if (data[i+3]) name3 = data[i + 3];
					if (data[i+4]) name4 = data[i + 4];
				}
			}
			document.getElementById("friend_username1").innerHTML = name1;
			document.getElementById("friend_username2").innerHTML = name2;
			document.getElementById("friend_username3").innerHTML = name3;
			document.getElementById("friend_username4").innerHTML = name4;
			hideId(name1, "friend_tr1");
			hideId(name2, "friend_tr2");
			hideId(name3, "friend_tr3");
			hideId(name4, "friend_tr4");
		}
	});
}
function getFriendList(username) {
	$.ajax({
		type : "POST",
		url : "GetFriendListServlet",
		data : {
			username : username
		},
		dataType : "json",
		success : function(data) {
			var name1 = data[0];
			var name2 = data[1];
			var name3 = data[2];
			var name4 = data[3];
			document.getElementById("friend_username1").innerHTML = name1;
			document.getElementById("friend_username2").innerHTML = name2;
			document.getElementById("friend_username3").innerHTML = name3;
			document.getElementById("friend_username4").innerHTML = name4;
			hideId(name1, "friend_tr1");
			hideId(name2, "friend_tr2");
			hideId(name3, "friend_tr3");
			hideId(name4, "friend_tr4");
		}
	});
}
function hideId(name, id) {
	if (name == null || name == "" || name == "undefined") {
		hide(id);
	} else {
		show(id);
	}
}
function showUserDetail(user_text) {
	var username = document.getElementById(user_text).innerHTML;
	if (username != "" && username != "undefined" && username != null) {
		$
				.ajax({
					type : "POST",
					url : "ShowUserDetailServlet",
					data : {
						username : username
					},
					dataType : "json",
					success : function(data) {
						document.getElementById("detail_username").innerHTML = data[0].username;
						document.getElementById("detail_email").innerHTML = data[0].email;
					}
				});
		if (username == document.getElementById("user_text").innerHTML) {
			document.getElementById("btn_addFriend").innerHTML = "登出";
		} else {
			document.getElementById("btn_addFriend").innerHTML = "加为好友";
		}
		getFriendList(username);
		$("#UserDetailModal").modal('show');
	}
}
function btn_login() {
	var user_text = document.getElementById("user_text").innerHTML;
	if (user_text == "登录") {
		$("#loginModal").modal('show');
	} else {
		showUserDetail("user_text");
	}

}

function addFriend() {
	var username1 = document.getElementById("user_text").innerHTML;
	if (username1 == "登录") {
		alert("请先登录");
	} else {
		var username2 = document.getElementById("detail_username").innerHTML;
		if (username2 == username1) {
			clearCookie();
			document.location.reload();
		} else {
			$.ajax({
				type : "POST",
				url : "AddFriendServlet",
				data : {
					username1 : username1,
					username2 : username2
				},
				dataType : "text",
				success : function(data) {
					if (data == "ok") {
						alert("添加成功");
					} else {
						if (data == "no") {
							alert("该用户已经是您的好友了");
						}
					}
				}
			});
		}
	}
}

function setBBS(data, id) {
	if (data == "" || data == null || data == "undefined") {
		hide("bbs_tr" + id);
	} else {
		document.getElementById("bbs_num" + id).innerHTML = data.num;
		document.getElementById("bbs_title" + id).innerHTML = data.title;
		document.getElementById("bbs_tip" + id).innerHTML = data.tip;
		document.getElementById("bbs_username" + id).innerHTML = data.username;
		document.getElementById("bbs_time" + id).innerHTML = data.timeString;
		document.getElementById("bbsid_tr" + id).value = data.id;
	}
}

function getBBS() {
	$.ajax({
		type : "POST",
		url : "GetBBSServlet",
		dataType : "json",
		success : function(data) {
			var len = data.length - 1;
			setBBS(data[len], "1");
			setBBS(data[len - 1], "2");
			setBBS(data[len - 2], "3");
			setBBS(data[len - 3], "4");
			setBBS(data[len - 4], "5");
		}
	});
}
function gotolastBBSList() {
	var first_bbs_id = document.getElementById("bbsid_tr1").value;
	var bbs1 = "", bbs2 = "", bbs3 = "", bbs4 = "", bbs5 = "";
	$.ajax({
		type : "POST",
		url : "GetBBSServlet",
		dataType : "json",
		success : function(data) {
			if (data[data.length - 1].id == first_bbs_id) {
				return;
			}
			for ( var i = 0; i < data.length; ++i) {
				if (data[i].id == first_bbs_id) {
					if (data[i+1]) bbs5 = data[i + 1];
					if (data[i+2]) bbs4 = data[i + 2];
					if (data[i+3]) bbs3 = data[i + 3];
					if (data[i+4]) bbs2 = data[i + 4];
					if (data[i+5]) bbs1 = data[i + 5];
					break;
				}
			}
			setBBS(bbs5, "5");
			setBBS(bbs4, "4");
			setBBS(bbs3, "3");
			setBBS(bbs2, "2");
			setBBS(bbs1, "1");
			hideId(bbs1, "bbs_tr1");
			hideId(bbs2, "bbs_tr2");
			hideId(bbs3, "bbs_tr3");
			hideId(bbs4, "bbs_tr4");
			hideId(bbs5, "bbs_tr5");
		}
	});
}
function gotonextBBSList() {
	var last_bbs_id = document.getElementById("bbsid_tr5").value;
	var bbs1 = "", bbs2 = "", bbs3 = "", bbs4 = "", bbs5 = "";
	$
			.ajax({
				type : "POST",
				url : "GetBBSServlet",
				dataType : "json",
				success : function(data) {
					if (last_bbs_id == "" || last_bbs_id == null
							|| last_bbs_id == "undefined"
							|| data[0].id == last_bbs_id) {
						return;
					}
					for ( var i = 0; i < data.length; ++i) {
						if (data[i].id == last_bbs_id) {
							if (data[i-1])  bbs1 = data[i - 1];
							if (data[i-2])  bbs2 = data[i - 2];
							if (data[i-3])  bbs3 = data[i - 3];
							if (data[i-4])  bbs4 = data[i - 4];
							if (data[i-5])  bbs5 = data[i - 5];
							break;
						}
					}
					setBBS(bbs1, "1");
					setBBS(bbs2, "2");
					setBBS(bbs3, "3");
					setBBS(bbs4, "4");
					setBBS(bbs5, "5");
					hideId(bbs1, "bbs_tr1");
					hideId(bbs2, "bbs_tr2");
					hideId(bbs3, "bbs_tr3");
					hideId(bbs4, "bbs_tr4");
					hideId(bbs5, "bbs_tr5");
				}
			});
}

function addBBS() {
	var username = document.getElementById("user_text").innerHTML;
	if (username == "登录") {
		alert("请先登录");
	} else {
		var title = document.getElementById("add_title").value;
		var tip = document.getElementById("add_tip").value;
		var text = document.getElementById("add_text").value;
		if (title == "" || tip == "" || text == "") {
			alert("不能有空项！");
			return;
		}
		if (title.length > 45) {
			alert("标题过长！");
			return;
		}
		if (tip.length > 90) {
			alert("描述过长！");
			return;
		}
		$.ajax({
			type : "POST",
			url : "AddBBSServlet",
			data : {
				title : title,
				tip : tip,
				text : text,
				username : username
			},
			dataType : "text",
			success : function(data) {
				if (data == "ok") {
					alert("添加成功");
					document.getElementById("add_title").value = "";
					document.getElementById("add_tip").value = "";
					document.getElementById("add_text").value = "";
					document.location.reload();
				}
			}
		});
	}
}

function addBBSText() {
	var bbsid = document.getElementById("bbsid").value;
	var username = document.getElementById("user_text").innerHTML;
	if (username == "登录") {
		alert("请先登录");
	} else {
		var text = document.getElementById("BBSText_text").value;
		if (text == "") {
			alert("不能有空项！");
			return;
		}
		$.ajax({
			type : "POST",
			url : "AddBBSTextServlet",
			data : {
				bbsid : bbsid,
				text : text,
				username : username
			},
			dataType : "text",
			success : function(data) {
				if (data == "ok") {
					alert("添加成功");
					document.getElementById("BBSText_text").value = "";
					var id = document.getElementById("bbstr_id").value;
					ShowBBSDetail(id);
				}
			}
		});
	}
}
function gotolastBBSTextList() {
	var first_bbstext_id = document.getElementById("bbstextid_tr1").value;
	var bbsid = document.getElementById("bbsid").value;
	var bbs1 = "", bbs2 = "", bbs3 = "", bbs4 = "", bbs5 = "";
	$.ajax({
		type : "POST",
		url : "GetBBSTextServlet",
		data : {
			bbsid : bbsid
		},
		dataType : "json",
		success : function(data) {
			if (data[data.length - 1].id == first_bbstext_id) {
				return;
			}
			for ( var i = 0; i < data.length; ++i) {
				if (data[i].id == first_bbstext_id) {
					if (data[i+1]) bbs5 = data[i + 1];
					if (data[i+2]) bbs4 = data[i + 2];
					if (data[i+3]) bbs3 = data[i + 3];
					if (data[i+4]) bbs2 = data[i + 4];
					if (data[i+5]) bbs1 = data[i + 5];
					break;
				}
			}
			setBBSText(bbs5, "5");
			setBBSText(bbs4, "4");
			setBBSText(bbs3, "3");
			setBBSText(bbs2, "2");
			setBBSText(bbs1, "1");
			hideId(bbs1, "bbstext_tr1");
			hideId(bbs2, "bbstext_tr2");
			hideId(bbs3, "bbstext_tr3");
			hideId(bbs4, "bbstext_tr4");
			hideId(bbs5, "bbstext_tr5");
		}
	});
}
function gotonextBBSTextList() {
	var last_bbstext_id = document.getElementById("bbstextid_tr5").value;
	var bbsid = document.getElementById("bbsid").value;
	var bbs1 = "", bbs2 = "", bbs3 = "", bbs4 = "", bbs5 = "";
	$.ajax({
		type : "POST",
		url : "GetBBSTextServlet",
		data : {
			bbsid : bbsid
		},
		dataType : "json",
		success : function(data) {
			if (last_bbstext_id == "" || last_bbstext_id == null
					|| last_bbstext_id == "undefined" || last_bbstext_id == 0
					|| data[0].id == last_bbstext_id) {
				return;
			}
			for ( var i = 0; i < data.length; ++i) {
				if (data[i].id == last_bbstext_id) {
					if (data[i-1]) bbs1 = data[i - 1];
					if (data[i-2]) bbs2 = data[i - 2];
					if (data[i-3]) bbs3 = data[i - 3];
					if (data[i-4]) bbs4 = data[i - 4];
					if (data[i-5]) bbs5 = data[i - 5];
					break;
				}
			}
			setBBSText(bbs1, "1");
			setBBSText(bbs2, "2");
			setBBSText(bbs3, "3");
			setBBSText(bbs4, "4");
			setBBSText(bbs5, "5");
			hideId(bbs1, "bbstext_tr1");
			hideId(bbs2, "bbstext_tr2");
			hideId(bbs3, "bbstext_tr3");
			hideId(bbs4, "bbstext_tr4");
			hideId(bbs5, "bbstext_tr5");
		}
	});
}
function setBBSText(data, id) {
	if (data == "" || data == null || data == "undefined") {
		hide("bbstext_tr" + id);
	} else {
		document.getElementById("bbstext_username" + id).innerHTML = data.username;
		document.getElementById("bbstext_text" + id).innerHTML = data.text;
		document.getElementById("bbstext_time" + id).innerHTML = data.timeString;
		document.getElementById("bbstextid_tr" + id).value = data.id;
	}

}
function clearBBSDetail(id) {
	document.getElementById("bbsModalLabal").innerHTML = "";
	document.getElementById("bbstext_username" + id).innerHTML = "";
	document.getElementById("bbstext_text" + id).innerHTML = "";
	document.getElementById("bbstext_time" + id).innerHTML = "";
	document.getElementById("bbstextid_tr" + id).value = "";
}

function ShowBBSDetail(id) {
	clearBBSDetail('1');
	clearBBSDetail('2');
	clearBBSDetail('3');
	clearBBSDetail('4');
	clearBBSDetail('5');
	var bbsid = document.getElementById(id).value;
	$
			.ajax({
				type : "POST",
				url : "GetBBSServlet",
				dataType : "json",
				success : function(data) {
					for ( var i = 0; i < data.length; ++i) {
						if (data[i].id == bbsid) {
							document.getElementById("bbsModalLabal").innerHTML = data[i].title;
							break;
						}
					}
				}
			});
	$.ajax({
		type : "POST",
		url : "GetBBSTextServlet",
		data : {
			bbsid : bbsid
		},
		dataType : "json",
		success : function(data) {
			document.getElementById("bbsid").value = bbsid;
			document.getElementById("bbstr_id").value = id;
			var len = data.length - 1;
			setBBSText(data[len], '1');
			setBBSText(data[len - 1], '2');
			setBBSText(data[len - 2], '3');
			setBBSText(data[len - 3], '4');
			setBBSText(data[len - 4], '5');
		}
	});
	show("bbstext_tr1");
	show("bbstext_tr2");
	show("bbstext_tr3");
	show("bbstext_tr4");
	show("bbstext_tr5");
	$("#bbsModal").modal('show');
}
function init() {
	getNews();
	getBBS();
	var username = getCookie("username");
	if (username != null && username != "") {
		document.getElementById("user_text").innerHTML = username;
	}
}

function gotolastChatRecordList() {
	var username1 = document.getElementById("user_text").innerHTML;
	var username2 = document.getElementById("detail_username").innerHTML;
	var first_chat_id = document.getElementById("chatid_tr1").value;
	var chat1 = "", chat2 = "", chat3 = "", chat4 = "", chat5 = "";
	$.ajax({
		type : "POST",
		url : "GetChatRecordServlet",
		data : {
			username1 : username1,
			username2 : username2
		},
		dataType : "json",
		success : function(data) {
			if (data[data.length - 1].id == first_chat_id) {
				return;
			}
			for ( var i = 0; i < data.length; ++i) {
				if (data[i].id == first_chat_id) {
					if (data[i+1])  chat5 = data[i + 1];
					if (data[i+2])  chat4 = data[i + 2];
					if (data[i+3])  chat3 = data[i + 3];
					if (data[i+4])  chat2 = data[i + 4];
					if (data[i+5])  chat1 = data[i + 5];
					break;
				}
			}
			hideId(chat1, "chat_tr1");
			hideId(chat2, "chat_tr2");
			hideId(chat3, "chat_tr3");
			hideId(chat4, "chat_tr4");
			hideId(chat5, "chat_tr5");
			SetChat(chat5, "5");
			SetChat(chat4, "4");
			SetChat(chat3, "3");
			SetChat(chat2, "2");
			SetChat(chat1, "1");
			
		}
	});
}
function gotonextChatRecordList() {
	var username1 = document.getElementById("user_text").innerHTML;
	var username2 = document.getElementById("detail_username").innerHTML;
	var last_chat_id = document.getElementById("chatid_tr5").value;
	var chat1 = "", chat2 = "", chat3 = "", chat4 = "", chat5 = "";
	$.ajax({
		type : "POST",
		url : "GetChatRecordServlet",
		data : {
			username1 : username1,
			username2 : username2
		},
		dataType : "json",
		success : function(data) {
			if (last_chat_id == "" || last_chat_id == null
					|| last_chat_id == "undefined" || last_chat_id == 0
					|| data[0].id == last_chat_id) {
				return;
			}
			for ( var i = 0; i < data.length; ++i) {
				if (data[i].id == last_chat_id) {
					if (data[i-1])
					chat1 = data[i - 1];
					if (data[i-2])
					chat2 = data[i - 2];
					if (data[i-3])
					chat3 = data[i - 3];
					if (data[i-4])
					chat4 = data[i - 4];
					if (data[i-5])
					chat5 = data[i - 5];
					break;
				}
			}
			hideId(chat1, "chat_tr1");
			hideId(chat2, "chat_tr2");
			hideId(chat3, "chat_tr3");
			hideId(chat4, "chat_tr4");
			hideId(chat5, "chat_tr5");
			SetChat(chat5, "5");
			SetChat(chat4, "4");
			SetChat(chat3, "3");
			SetChat(chat2, "2");
			SetChat(chat1, "1");
			
		}
	});
}

function SetChat(data, id) {
	if (data != "" && data != null && data != "undefined"){
		document.getElementById("chatid_tr" + id).value = data.id;
		document.getElementById("chat_username" + id).innerHTML = data.username1;
		document.getElementById("chat_text" + id).innerHTML = data.text;
		document.getElementById("chat_time" + id).innerHTML = data.timeString;
	}
}

function Chat() {
	var username1 = document.getElementById("user_text").innerHTML;
	if (username1 == "登录") {
		alert("请先登录");
		return;
	} else {
		var username2 = document.getElementById("detail_username").innerHTML;
		if (username1 == username2) {
			alert("您不能和自己私信");
			return;
		} else {
			$
					.ajax({
						type : "POST",
						url : "GetChatRecordServlet",
						data : {
							username1 : username1,
							username2 : username2
						},
						dataType : "json",
						success : function(data) {
							document.getElementById("ChatModalLabal").innerHTML = username2;
							var len = data.length - 1;
							SetChat(data[len], '1');
							SetChat(data[len - 1], '2');
							SetChat(data[len - 2], '3');
							SetChat(data[len - 3], '4');
							SetChat(data[len - 4], '5');
						}
					});
			$("#ChatModal").modal('show');
		}
	}

}
function addChatRecord(){
	var username1 = document.getElementById("user_text").innerHTML;
	var username2 = document.getElementById("detail_username").innerHTML;
	var text = document.getElementById("chat_text").value;
	if (text == "") {
		alert("不能有空项！");
		return;
	} else {
		$.ajax({
			type : "POST",
			url : "AddChatRecordServlet",
			data : {
				username1 : username1,
				text : text,
				username2 : username2
			},
			dataType : "text",
			success : function(data) {
				if (data == "ok") {
					alert("发送成功");
					document.getElementById("chat_text").value = "";
					Chat();
				}
			}
		});
	}
	
}
$(document).on(
		'show.bs.modal',
		'.modal',
		function() {
			var zIndex = 1040 + (10 * $('.modal:visible').length);
			$(this).css('z-index', zIndex);
			setTimeout(function() {
				$('.modal-backdrop').not('.modal-stack').css('z-index',
						zIndex - 1).addClass('modal-stack');
			}, 0);
		});