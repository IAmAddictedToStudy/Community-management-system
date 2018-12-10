<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang='en' xmlns='http://www.w3.org/1999/xhtml'>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>福建师范大学学生社团管理系统</title>
<meta name="keywords" content="福建师范大学：社团管理、活动查询、时长记录" />
<meta name="description" content="社团让生活更美好" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common_sync0_libs_4d81287.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common_sync1_libs_769abc5.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header_d41d8cd.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index_sync0_libs_63f8fb8.css" />
<link href="https://vjs.zencdn.net/7.2.4/video-js.css" rel="stylesheet">
<script src="https://vjs.zencdn.net/ie8/ie8-version/videojs-ie8.min.js"></script>

</head>
<body>
	<div
		style="background-image: url(${pageContext.request.contextPath}/img/kda1.jpg)">
		<div id="wrapper">

			<script type="text/javascript"
				src="${pageContext.request.contextPath}/js/growingio.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/js/mask.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/js/header.min.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/js/web_socket.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/js/websocket.js"></script>

			<div id="header_top_notice"></div>
			<div id="jk-header">
				<div class="header">
					<h1>
						<a href="/index.html" class="logo"> <img
							src="${pageContext.request.contextPath}/img/ecb0762dd32ffb56.jpg"
							width="100" alt="福建师大" />
						</a>
					</h1>
					<nav style="width: 490px;">
						<ul>
							<li><a href="/index.html" class="home">首页</a></li>
							<li class="careerpath"><a href="/zhiye/index.html">活动预告</a><i
								class="slide-icon"></i>
								<div class="zhiye-submenu slide-submeu">
									<strong>文艺类</strong> <a href="/zhiye/web/index.html"><i
										class="web-icon"></i>校诗歌大会</a> <a
										href="/zhiye/wechatapp/index.html"><i class="wx-icon"></i>校乐器教学</a>
									<strong>运动类</strong> <a href="/zhiye/android/index.html"><i
										class="android-icon"></i>夏日球场</a> <a href="/zhiye/ios/index.html"><i
										class="ios-icon"></i>足球队比赛（东区田径场）</a> <strong>桌游类</strong> <a
										href="/zhiye/python/index.html"><i class="python-icon"></i>数信社联棋牌协会狼人杀</a>
									<a href="/zhiye/php/index.html"><i class="php-icon"></i>校台球协会新手教学</a>
									<a href="/zhiye/go/index.html"><i class="golang-icon"></i>校棋牌大赛</a>
									<strong>教育类</strong> <a href="/zhiye/bigdata/index.html"><i
										class="data-icon"></i>数教模拟教师技能大赛</a> <strong>社会生活</strong> <a
										href="/zhiye/ml/index.html"><i class="mlearning-icon"></i>企业项目交流讲座</a>
									<strong>益智类</strong> <a href="/zhiye/blockchain/index.html"><i
										class="yw-icon"></i>数信创管协会模拟销售大赛</a>

								</div></li>
							<li><a href="../association/association.jsp">社团</a><i
								class="slide-icon"></i>
								<div class="slide-submeu">
									<a href="#">福建师范大学校学生社团联合会</a> <a
										href="../AssOfMathInformationSocieties/AssMathInfSocieties.jsp">数信与信息学院社团联合会</a>
									<a href="/path/index.html">数信学院院级部门</a> <a
										href="/Other/ke/xilie/index.html">其他社团</a>
								</div></li>
							<li><a href="/partner/index.html">校园热点</a><i
								class="slide-icon"></i>
								<div class="slide-submeu qy-box">
									<a href="/Other/zt/microsoftai/index.html"><i
										class="wr-icon"></i>学生放孔明灯被保安驱逐</a> <a
										href="/Other/zt/baiduai/index.html"><i class="baidu-icon"></i>情侣接吻掉进星雨湖</a>
									<a href="/Other/zt/aws/index.html"><i class="aws-icon"></i>大雨导致鱼儿路上游</a>
									<a href="/Other/zt/qcloud/index.html"><i class="txy-icon"></i>难受</a>
									<a href="/Other/zt/qualcomm/index.html"><i class="gt-icon"></i>香菇
									</a>
								</div></li>
							<li><a href="/Other/wiki/index.html">社区</a><i
								class="slide-icon"></i>
								<div class="slide-submeu">
									<a href="/Other/wiki/index.html">学生生活</a> <a
										href="/Other/wenda/index.html">附近趣味</a>
									<!--<a href="/Other/qun/index.html">社群</a>
                                    <a href="/Other/download/index.html">资料下载</a>-->
								</div></li>
						</ul>
					</nav>
					<div class="search">
						<input class="searchinput" id="searchinput" placeholder="搜索活动、问答" />
						<span class="search-icon" id="search-bottom"></span>
						<div class="search-result"></div>
					</div>
					<div class="nav-other" id="nav-other">
						<div class="centerbox" style="display: none;">
							<a href="/Other/xue/index.html" class="learn-center" title="学习中心"></a>
						</div>
						<div class="centerbox" style="display: none;">
							<a href="/member/notifications/index.html" class="message"
								id="message" title="消息中心"><i class="have" id="have"
								style="display: none;"></i></a>

						</div>

						<span class="userinfo-notlogin"> <a
							href="../registerAndLogin/login.jsp">登录</a><i></i><a
							href="../registerAndLogin/register.jsp">注册</a>
						</span>
					</div>
				</div>
			</div>
			<div id="pager">



				<div class="cf" style="position: relative;">
					<div class="jk-banner">
						<div class="banner-container" style="cursor: -webkit-grab;">
							<span id="banner-arrow-left" class="banner-arrow-left"></span> <span
								id="banner-arrow-right" class="banner-arrow-right"></span>
							<div class="swiper-wrapper" style="">
								<p align="center">

									<video id="my-video" class="video-js" controls preload="auto"
										height="300"
										poster="${pageContext.request.contextPath}/img/kda1.jpg"
										data-setup="{}" style="background-color: antiquewhite">
										<source src="https://v.qq.com/x/page/j0685gqv0nq.htmll"
											type='video/mp4'>
										<source
											src="${pageContext.request.contextPath}/movie/kda.webm"
											type='video/webm'>

									</video>

									<script src="https://vjs.zencdn.net/7.2.4/video.js"></script>
								</p>
							</div>
							<div class="banner-pagination"></div>
						</div>
					</div>
					<div class="subscription-container">
						<h3>师大头条</h3>
						<ul class="subscription-list">

							<li><img src="${pageContext.request.contextPath}/img/01.jpg"
								alt="超标电动车打击力度加大">
								<p>
									<a href="/course/4272.html" target="_blank">超标电动车打击力度加大</a>
								</p></li>

							<li><img src="${pageContext.request.contextPath}/img/01.jpg"
								alt="学生猫砂堵住排水管">
								<p>
									<a href="/course/4271.html" target="_blank">学生猫砂堵住排水管</a>
								</p></li>

							<li><img src="${pageContext.request.contextPath}/img/01.jpg"
								alt="女生宿舍刷火锅引发火灾">
								<p>
									<a href="/course/4243.html" target="_blank">女生宿舍刷火锅引发火灾</a>
								</p></li>

							<li><img src="${pageContext.request.contextPath}/img/01.jpg"
								alt="著名企业家廖福钦捐赠科技楼">
								<p>
									<a href="/course/4242.html" target="_blank">著名企业家廖福钦捐赠科技楼</a>
								</p></li>

							<li><img src="${pageContext.request.contextPath}/img/01.jpg"
								alt="编不下去了">
								<p>
									<a href="/course/4239.html" target="_blank">编不下去了</a>
								</p></li>

						</ul>
						<form class="subscription-sub">
							<div class="form-container">
								<input id="subscript_email" type="text" name="email"
									placeholder="请输入您的邮箱地址"> <a href="javascript:;"
									class="subscription-btn" id="subscript_sub">订阅</a>
								<div class="error-content">
									<p class="content">请输入正确的邮箱地址。</p>
								</div>
							</div>
						</form>
					</div>

					<div class="aside-allCategory">
						<div class="bd">
							<ul class="aside-cList">

								<li>
									<div>
										<a href="/course/web/index.html">数信学院街舞大赛</a>
										<div class="list-show">
											<div class="knowledge-system">
												<p class="list-title knowledge-title">
													<span>内容介绍</span>
												</p>
												<div>

													<dl>
														<dt>
															<a href=""><span style="color: red;">参赛队伍</span></a>
														</dt>
														<dd class="cf">

															<a href="/course/html/index.html">福建师范大学代表队</a> <a
																href="/course/css/index.html">福州大学代表队</a> <a
																href="/course/javascript/index.html">闽江师专代表队</a> <a
																href="/course/html5/index.html">工程学院代表队</a> <a
																href="/course/css3/index.html">福建医科大学代表队</a> <a
																href="/course/prospective/index.html">福建农林大学代表队</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/advance/index.html">比赛章程</a>
														</dt>
														<dd class="cf">

															<a href="/course/typescript/index.html">初赛</a> <a
																href="/course/security/index.html">复赛</a> <a
																href="/course/practice/index.html">决赛</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/webframe/index.html">评委</a>
														</dt>
														<dd class="cf">

															<a href="/course/jquery/index.html">舞蹈学院教授1</a> <a
																href="/course/jqueryui/index.html">舞蹈学院教授2</a> <a
																href="/course/jquerymobile/index.html">舞蹈学院教授3</a> <a
																href="/course/extjs/index.html">舞蹈学院教授4</a> <a
																href="/course/angularjs/index.html">舞蹈学院教授5</a> <a
																href="/course/reactjs/index.html">舞蹈学院教授6</a> <a
																href="/course/bootstrap/index.html">舞蹈学院教授7</a> <a
																href="/course/reactnative/index.html">舞蹈学院教授8</a> <a
																href="/course/backbone/index.html">舞蹈学院教授9</a> <a
																href="/course/threejs/index.html">舞蹈学院教授10</a> <a
																href="/course/mootools/index.html">舞蹈学院教授11</a> <a
																href="/course/compass/index.html">舞蹈学院教授12</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/html5games/index.html">比赛时间、地点</a>
														</dt>
														<dd class="cf">

															<a href="/course/canvas/index.html">时间：2018.11.03</a> <a
																href="/course/svg/index.html">地点：图书馆大礼堂</a>



														</dd>
													</dl>

												</div>
											</div>
											<div style="text-align: center;">

												<h1>
													<button type="submit" class="btn">
														<h3>
															<span>我要加入</span>
														</h3>
														</button>
												</h1>
												<div class="dialog"
													style="width: 200px; height: 50px; border: solid 1px #000; position: absolute; right: 340px; top: 250px; line-height: 50px; text-align: center; display: none; background-color: aliceblue;">
													<a href="${pageContext.request.contextPath}/activityRegistration?id=9">
														<h3 style="color: black;">确定加入？</h3>
													</a>

												</div>
												<script>
													$(".btn").click(function() {
														$(".dialog").show(100)
													})
												</script>
											</div>

											<div class="recommend-study">
												<p class="list-title recommend-title">
													<span>赞助商信息</span>
												</p>
												<ul class="recommend">

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="福建师大logo">
														<p>
															<a href="#" target="_blank">高效、易于学习的舞蹈你不了解一下吗？ </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="福建师大logo">
														<p>
															<a
																href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																target="_blank">带你领略街舞的精妙所在 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="福建师大logo">
														<p>
															<a
																href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																target="_blank">4小时带你玩转舞蹈基础理论 </a>
														</p></li>

												</ul>
											</div>
										</div>
									</div>
								</li>

								<li>
									<div>
										<a href="/course/mobile/index.html">校社联钢琴大赛</a>
										<div class="list-show">
											<div class="knowledge-system">
												<p class="list-title knowledge-title">
													<span>活动简介</span>
												</p>
												<div>

													<dl>
														<dt>
															<a href="/course/app/index.html">比赛时间、地点</a>
														</dt>
														<dd class="cf">

															<a href="/course/android/index.html">2018.11.19</a> <a
																href="/course/ios/index.html">南区音乐大厅</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/games/index.html">参赛队伍</a>
														</dt>
														<dd class="cf">

															<a href="/course/cocos/index.html">a代表队</a> <a
																href="/course/unity3d/index.html">b代表队</a> <a
																href="/course/spritekit2d/index.html">c代表队</a> <a
																href="/course/unreal/index.html">d代表队</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/frame/index.html">评委</a>
														</dt>
														<dd class="cf">

															<a href="/course/cordova/index.html">音乐学院教授廖福钦</a> <a
																href="/course/reactnative1/index.html">音乐学院教授廖福钦</a>

														</dd>
													</dl>

												</div>
											</div>
											<div class="recommend-study">
												<p class="list-title recommend-title">
													<span>赞助商信息</span>
												</p>
												<ul class="recommend">

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="首页-轮播图左侧导航目录-推荐学习-新上线课程">
														<p>
															<a
																href="/Other/ad/v1/code_slot/17/creative/137/redirect/delivery_ad_id/136/amp;_t/1540526256.html"
																target="_blank">厉害了666 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg">
														<p>
															<a
																href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																target="_blank">带你领略钢琴的精妙所在 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="首页左侧导航目录+PHP服务器配置">
														<p>
															<a
																href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																target="_blank">4小时带你玩转钢琴 </a>
														</p></li>

												</ul>
											</div>
										</div>
									</div>
								</li>

								<li>
									<div>
										<a href="/course/dev/index.html">美术学院画展</a>
										<div class="list-show">
											<div class="knowledge-system">
												<p class="list-title knowledge-title">
													<span>活动简介</span>
												</p>
												<div>

													<dl>
														<dt>
															<a href="/course/app/index.html">比赛时间、地点</a>
														</dt>
														<dd class="cf">

															<a href="/course/android/index.html">2018.11.19</a> <a
																href="/course/ios/index.html">南区音乐大厅</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/games/index.html">参赛队伍</a>
														</dt>
														<dd class="cf">

															<a href="/course/cocos/index.html">a代表队</a> <a
																href="/course/unity3d/index.html">v代表队</a> <a
																href="/course/spritekit2d/index.html">c代表队</a> <a
																href="/course/unreal/index.html">d代表队</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/frame/index.html">评委</a>
														</dt>
														<dd class="cf">

															<a href="/course/cordova/index.html">音乐学院教授廖福钦</a> <a
																href="/course/reactnative1/index.html">音乐学院教授廖福钦</a>

														</dd>
													</dl>

												</div>
											</div>
											<div class="recommend-study">
												<p class="list-title recommend-title">
													<span>赞助商信息</span>
												</p>
												<ul class="recommend">

													<li><img src="img/01.jpg"
														alt="首页-轮播图左侧导航目录-推荐学习-新上线课程">
														<p>
															<a
																href="/Other/ad/v1/code_slot/17/creative/137/redirect/delivery_ad_id/136/amp;_t/1540526256.html"
																target="_blank">厉害了666 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg">
														<p>
															<a
																href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																target="_blank">带你领略钢琴的精妙所在 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="首页左侧导航目录+PHP服务器配置">
														<p>
															<a
																href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																target="_blank">4小时带你玩转钢琴 </a>
														</p></li>

												</ul>
											</div>
										</div>
									</div>
								</li>

								<li>
									<div>
										<a href="/course/ai/index.html">西部爱心协会募捐</a>
										<div class="list-show">
											<div class="knowledge-system">
												<p class="list-title knowledge-title">
													<span>活动简介</span>
												</p>
												<div>

													<dl>
														<dt>
															<a href="/course/app/index.html">比赛时间、地点</a>
														</dt>
														<dd class="cf">

															<a href="/course/android/index.html">2018.11.19</a> <a
																href="/course/ios/index.html">南区音乐大厅</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/games/index.html">参赛队伍</a>
														</dt>
														<dd class="cf">

															<a href="/course/cocos/index.html">a代表队</a> <a
																href="/course/unity3d/index.html">c代表队</a> <a
																href="/course/spritekit2d/index.html">c代表队</a> <a
																href="/course/unreal/index.html">a代表队</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/frame/index.html">评委</a>
														</dt>
														<dd class="cf">

															<a href="/course/cordova/index.html">音乐学院教授廖福钦</a> <a
																href="/course/reactnative1/index.html">音乐学院教授廖福钦</a>

														</dd>
													</dl>

												</div>
											</div>
											<div class="recommend-study">
												<p class="list-title recommend-title">
													<span>赞助商信息</span>
												</p>
												<ul class="recommend">

													<li><img src="img/01.jpg"
														alt="首页-轮播图左侧导航目录-推荐学习-新上线课程">
														<p>
															<a
																href="/Other/ad/v1/code_slot/17/creative/137/redirect/delivery_ad_id/136/amp;_t/1540526256.html"
																target="_blank">厉害了666 </a>
														</p></li>

													<li><img src="img/01.jpg">
														<p>
															<a
																href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																target="_blank">带你领略钢琴的精妙所在 </a>
														</p></li>

													<li><img src="img/01.jpg" alt="首页左侧导航目录+PHP服务器配置">
														<p>
															<a
																href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																target="_blank">4小时带你玩转钢琴 </a>
														</p></li>

												</ul>
											</div>
										</div>
									</div>
								</li>

								<li>
									<div>
										<a href="/course/intellegence/index.html">金话筒协会演讲比赛</a>
										<div class="list-show">
											<div class="list-show">
												<div class="knowledge-system">
													<p class="list-title knowledge-title">
														<span>活动简介</span>
													</p>
													<div>

														<dl>
															<dt>
																<a href="/course/app/index.html">比赛时间、地点</a>
															</dt>
															<dd class="cf">

																<a href="/course/android/index.html">2018.11.19</a> <a
																	href="/course/ios/index.html">南区音乐大厅</a>

															</dd>
														</dl>

														<dl>
															<dt>
																<a href="/course/games/index.html">参赛队伍</a>
															</dt>
															<dd class="cf">

																<a href="/course/cocos/index.html">a代表队</a> <a
																	href="/course/unity3d/index.html">c代表队</a> <a
																	href="/course/spritekit2d/index.html">c代表队</a> <a
																	href="/course/unreal/index.html">a代表队</a>

															</dd>
														</dl>

														<dl>
															<dt>
																<a href="/course/frame/index.html">评委</a>
															</dt>
															<dd class="cf">

																<a href="/course/cordova/index.html">音乐学院教授廖福钦</a> <a
																	href="/course/reactnative1/index.html">音乐学院教授廖福钦</a>

															</dd>
														</dl>

													</div>
												</div>
												<div class="recommend-study">
													<p class="list-title recommend-title">
														<span>赞助商信息</span>
													</p>
													<ul class="recommend">

														<li><img src="img/01.jpg"
															alt="首页-轮播图左侧导航目录-推荐学习-新上线课程">
															<p>
																<a
																	href="/Other/ad/v1/code_slot/17/creative/137/redirect/delivery_ad_id/136/amp;_t/1540526256.html"
																	target="_blank">厉害了666 </a>
															</p></li>

														<li><img
															src="${pageContext.request.contextPath}/img/01.jpg">
															<p>
																<a
																	href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																	target="_blank">带你领略钢琴的精妙所在 </a>
															</p></li>

														<li><img
															src="${pageContext.request.contextPath}/img/01.jpg"
															alt="首页左侧导航目录+PHP服务器配置">
															<p>
																<a
																	href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																	target="_blank">4小时带你玩转钢琴 </a>
															</p></li>

													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>

								<li>
									<div>
										<a href="/course/productdesign/index.html">篮球协会队员选拔</a>
										<div class="list-show">
											<div class="knowledge-system">
												<p class="list-title knowledge-title">
													<span>活动简介</span>
												</p>
												<div>

													<dl>
														<dt>
															<a href="/course/app/index.html">比赛时间、地点</a>
														</dt>
														<dd class="cf">

															<a href="/course/android/index.html">2018.11.19</a> <a
																href="/course/ios/index.html">南区音乐大厅</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/games/index.html">参赛队伍</a>
														</dt>
														<dd class="cf">

															<a href="/course/cocos/index.html">代表队</a> <a
																href="/course/unity3d/index.html">代表队</a> <a
																href="/course/spritekit2d/index.html">代表队</a> <a
																href="/course/unreal/index.html">代表队</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/frame/index.html">评委</a>
														</dt>
														<dd class="cf">

															<a href="/course/cordova/index.html">音乐学院教授廖福钦</a> <a
																href="/course/reactnative1/index.html">音乐学院教授廖福钦</a>

														</dd>
													</dl>

												</div>
											</div>
											<div class="recommend-study">
												<p class="list-title recommend-title">
													<span>赞助商信息</span>
												</p>
												<ul class="recommend">

													<li><img src="img/01.jpg"
														alt="首页-轮播图左侧导航目录-推荐学习-新上线课程">
														<p>
															<a
																href="/Other/ad/v1/code_slot/17/creative/137/redirect/delivery_ad_id/136/amp;_t/1540526256.html"
																target="_blank">厉害了666 </a>
														</p></li>

													<li><img src="img/01.jpg">
														<p>
															<a
																href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																target="_blank">带你领略钢琴的精妙所在 </a>
														</p></li>

													<li><img src="img/01.jpg" alt="首页左侧导航目录+PHP服务器配置">
														<p>
															<a
																href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																target="_blank">4小时带你玩转钢琴 </a>
														</p></li>

												</ul>
											</div>
										</div>
									</div>
								</li>

								<li>
									<div>
										<a href="/course/clouddata/index.html">兴趣课程</a>
										<div class="list-show">
											<div class="knowledge-system">
												<p class="list-title knowledge-title">
													<span>活动简介</span>
												</p>
												<div>

													<dl>
														<dt>
															<a href="/course/app/index.html">比赛时间、地点</a>
														</dt>
														<dd class="cf">

															<a href="/course/android/index.html">2018.11.19</a> <a
																href="/course/ios/index.html">南区音乐大厅</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/games/index.html">参赛队伍</a>
														</dt>
														<dd class="cf">

															<a href="/course/cocos/index.html">代表队</a> <a
																href="/course/unity3d/index.html">代表队</a> <a
																href="/course/spritekit2d/index.html">代表队</a> <a
																href="/course/unreal/index.html">代表队</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/frame/index.html">评委</a>
														</dt>
														<dd class="cf">

															<a href="/course/cordova/index.html">音乐学院教授廖福钦</a> <a
																href="/course/reactnative1/index.html">音乐学院教授廖福钦</a>

														</dd>
													</dl>

												</div>
											</div>
											<div class="recommend-study">
												<p class="list-title recommend-title">
													<span>赞助商信息</span>
												</p>
												<ul class="recommend">

													<li><img src="img/01.jpg"
														alt="首页-轮播图左侧导航目录-推荐学习-新上线课程">
														<p>
															<a
																href="/Other/ad/v1/code_slot/17/creative/137/redirect/delivery_ad_id/136/amp;_t/1540526256.html"
																target="_blank">厉害了666 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg">
														<p>
															<a
																href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																target="_blank">带你领略钢琴的精妙所在 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="首页左侧导航目录+PHP服务器配置">
														<p>
															<a
																href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																target="_blank">4小时带你玩转钢琴 </a>
														</p></li>

												</ul>
											</div>
										</div>
									</div>
								</li>

								<li>
									<div>
										<a href="/course/base/index.html">其他活动</a>
										<div class="list-show">
											<div class="knowledge-system">
												<p class="list-title knowledge-title">
													<span>活动简介</span>
												</p>
												<div>

													<dl>
														<dt>
															<a href="/course/app/index.html">比赛时间、地点</a>
														</dt>
														<dd class="cf">

															<a href="/course/android/index.html">2018.11.19</a> <a
																href="/course/ios/index.html">南区音乐大厅</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/games/index.html">参赛队伍</a>
														</dt>
														<dd class="cf">

															<a href="/course/cocos/index.html">代表队</a> <a
																href="/course/unity3d/index.html">代表队</a> <a
																href="/course/spritekit2d/index.html">代表队</a> <a
																href="/course/unreal/index.html">代表队</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="/course/frame/index.html">评委</a>
														</dt>
														<dd class="cf">

															<a href="/course/cordova/index.html">音乐学院教授廖福钦</a> <a
																href="/course/reactnative1/index.html">音乐学院教授廖福钦</a>

														</dd>
													</dl>

												</div>
											</div>
											<div class="recommend-study">
												<p class="list-title recommend-title">
													<span>赞助商信息</span>
												</p>
												<ul class="recommend">

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="首页-轮播图左侧导航目录-推荐学习-新上线课程">
														<p>
															<a
																href="/Other/ad/v1/code_slot/17/creative/137/redirect/delivery_ad_id/136/amp;_t/1540526256.html"
																target="_blank">厉害了666 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg">
														<p>
															<a
																href="/Other/ad/v1/code_slot/18/creative/138/redirect/delivery_ad_id/137/amp;_t/1540526256.html"
																target="_blank">带你领略钢琴的精妙所在 </a>
														</p></li>

													<li><img
														src="${pageContext.request.contextPath}/img/01.jpg"
														alt="首页左侧导航目录+PHP服务器配置">
														<p>
															<a
																href="/Other/ad/v1/code_slot/19/creative/139/redirect/delivery_ad_id/138/amp;_t/1540526256.html"
																target="_blank">4小时带你玩转钢琴 </a>
														</p></li>

												</ul>
											</div>
										</div>
									</div>
								</li>

							</ul>
						</div>
					</div>
				</div>
				<div class="minbanner">
					<h3 style="display: none;">活动推荐位</h3>
					<div class="ad-contain">

						<a class="ad-item"
							href="/Other/ad/v1/code_slot/9/creative/140/redirect/delivery_ad_id/139/amp;_t/1540526256.html"
							target="_blank"><img
							src="${pageContext.request.contextPath}/img/kda1.jpg"
							alt="首页轮播图下方+人才码头"></a> <a class="ad-item"
							href="/Other/ad/v1/code_slot/10/creative/82/redirect/delivery_ad_id/72/amp;_t/1540526256.html"
							target="_blank"><img
							src="${pageContext.request.contextPath}/img/img02.jpg"
							alt="百度AI课程专题"></a> <a class="ad-item"
							href="/Other/ad/v1/code_slot/11/creative/41/redirect/delivery_ad_id/17/amp;_t/1540526256.html"
							target="_blank"><img
							src="${pageContext.request.contextPath}/img/img03.jpg"
							alt="广告位_03  SVIP 20170727-20170731"></a>

					</div>
				</div>

				<div class="jk-uptodate">
					<h2>
						<span style="color: aliceblue;">最新活动宣传</span>
					</h2>
					<ul>

						<li class="uptodate"><a href="/zhiye/course/158/type/23.html"
							target="_blank"> <img class="uptodate-img"
								src="img/img04.jpg" alt="">

								<p class="uptodate-title">棋牌操作详解</p>
								<p class="uptodate-info">
									中级 <span>|</span>5门课
								</p>
						</a></li>

						<li class="uptodate"><a href="/zhiye/course/157/type/38.html"
							target="_blank"> <img class="uptodate-img"
								src="${pageContext.request.contextPath}/img/img05.jpg" alt="">
								<p class="uptodate-title">动漫协会万圣节游戏教程</p>
								<p class="uptodate-info">
									中级 <span>|</span>3门课

								</p>
						</a></li>

						<li class="uptodate"><a href="/zhiye/course/156/type/38.html"
							target="_blank"> <img class="uptodate-img"
								src="${pageContext.request.contextPath}/img/img06.jpg" alt="">
								<p class="uptodate-title">夜跑协会有氧跑步教学</p>
								<p class="uptodate-info">
									中级 <span>|</span>7门课

								</p>
						</a></li>

						<li class="uptodate"><a href="/zhiye/course/155/type/38.html"
							target="_blank"> <img class="uptodate-img"
								src="${pageContext.request.contextPath}/img/img07.jpg" alt="">
								<p class="uptodate-title">羽毛球协会教学</p>
								<p class="uptodate-info">
									中级 <span>|</span>4门课

								</p>
						</a></li>

					</ul>
				</div>
				<div class="zhiye">
					<h2>
						<span style="color: aliceblue;">校园周边</span>
					</h2>
					<a href="/zhiye/index.html" target="_blank">更多职业方向&nbsp;&gt;&gt;</a>
					<ul>


						<li class="status"><a class="card "
							href="/zhiye/android/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/img/img09.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li class="status"><a class="card "
							href="/zhiye/web/index.html" target="_blank"> <img
								src="img/img09.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li class="status"><a class="card "
							href="/zhiye/wechatapp/index.html" target="_blank"> <img
								src="img/img09.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li class="status"><a class="card "
							href="/zhiye/python/index.html" target="_blank"> <img
								src="img/img09.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li class="status"><a class="card "
							href="/zhiye/php/index.html" target="_blank"> <img
								src="img/img08.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li class="status"><a class="card "
							href="/zhiye/go/index.html" target="_blank"> <img
								src="/img/img08.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li class="status"><a class="card "
							href="/zhiye/ios/index.html" target="_blank"> <img
								src="img/img08.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li class="status"><a class="card "
							href="/zhiye/bigdata/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/img/img08.jpg" alt="好吃的">
								<h3>好吃的</h3>
						</a></li>



						<li>
							<div class="card">
								<img src="${pageContext.request.contextPath}/img/img08.jpg"
									alt="好吃的" title="即将上线">
								<h3>J好吃的</h3>
							</div>
						</li>



						<li>
							<div class="card">
								<img src="${pageContext.request.contextPath}/img/img08.jpg"
									alt="好吃的" title="即将上线">
								<h3>J好吃的</h3>
							</div>
						</li>


					</ul>
				</div>
				<div class="vip">
					<h2>
						<span style="color: aliceblue">协会简介</span>
					</h2>
					<a href="/path/index.html" target="_blank">更多知识体系&nbsp;&gt;&gt;</a>
					<ul>

						<li><a href="/path/html5/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/5f32/595b876537116.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>116个会员</span>
						</a></li>

						<li><a href="/path/android/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/28dc/595b878d67fdd.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>90门课程</span>
						</a></li>

						<li><a href="/path/javaweb/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/ff9b/595b87bf6cec5.png"
								alt="协会名称">
								<h3>协会名称b</h3> <span>64个会员</span>
						</a></li>

						<li><a href="/path/nodejs/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/2d29/595b87d12c634.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>39个会员</span>
						</a></li>

						<li><a href="/path/bootstrap/index.html" target="_blank">
								<img
								src="${pageContext.request.contextPath}/home/201707/04/0dfc/595b87e3c9351.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>110个会员</span>
						</a></li>

						<li><a href="/path/unity3d/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/6c5e/595b8805ce869.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>45个会员</span>
						</a></li>

						<li><a href="/path/ios/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/222d/595b881a26b3b.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>51个会员</span>
						</a></li>

						<li><a href="/path/java/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/dee2/595b8829d33ec.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>45个会员</span>
						</a></li>

						<li><a href="/path/php/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/53bc/595b886903b76.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>230个会员</span>
						</a></li>

						<li><a href="/path/python/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/0579/595b88771f5b2.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>38个会员</span>
						</a></li>

						<li><a href="/path/swift/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/cdc0/595b88843e58d.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>110个会员</span>
						</a></li>

						<li><a href="/path/javascript/index.html" target="_blank">
								<img
								src="${pageContext.request.contextPath}/home/201707/04/b9a5/595b88929e943.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>43个会员</span>
						</a></li>

						<li><a href="/path/c/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/400c/595b88b8739f6.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>170个会员</span>
						</a></li>

						<li><a href="/path/aspdotnet/index.html" target="_blank">
								<img
								src="${pageContext.request.contextPath}/home/201707/04/b8ad/595b88d574b22.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>61个会员</span>
						</a></li>

						<li><a href="/path/cocos2d-x/index.html" target="_blank">
								<img
								src="${pageContext.request.contextPath}/home/201707/04/5ea3/595b88f1e8ed4.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>89个会员</span>
						</a></li>

						<li><a href="/path/csharp/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/8528/595b8907d4aba.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>30个会员</span>
						</a></li>

						<li><a href="/path/gui/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/43a9/595b895a7f00a.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>40个会员</span>
						</a></li>

						<li><a href="/path/docker/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/0e6e/595b89670adf8.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>90个会员</span>
						</a></li>

						<li><a href="/path/arduino/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/8637/595b897841a09.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>140个会员</span>
						</a></li>

						<li><a href="/path/egret/index.html" target="_blank"> <img
								src="${pageContext.request.contextPath}/home/201707/04/9c12/595b8985638f0.png"
								alt="协会名称">
								<h3>协会名称</h3> <span>7门课程</span>
						</a></li>

						<li><a href="/path/uiautomator/index.html" target="_blank">
								<img
								src="${pageContext.request.contextPath}/home/201707/04/d3c1/595b8993e8cd3.png"
								alt="协会名称">
								<h3>协会名称r</h3> <span>20门课程</span>
						</a></li>

					</ul>
				</div>

				<section class="jk-story">
					<div class="story-container" style="cursor: -webkit-grab;">
						<span class="story-arrow-left"></span> <span
							class="story-arrow-right"></span>
						<div class="swiper-wrapper">
							<div class="swiper-slide" style="background: #ccc">
								<ul>
									<li><a href="/Other/blog/27.html" target="_blank">
											<div class="story-content">
												<i class="blue">兴趣讲座</i>
												<p>由微软亚洲研究院呈现的人工智能公开课，现免费面向所有开发者，助力开发属于你自己的开发出自己的智能服务，欢迎学习。</p>
											</div>
											<div class="story-info">
												<img src="/index/images/mcai_a258e11.jpg" alt="微软Ai">
												<p>微软虚拟学院</p>
												<span>人工智能时代技术引领者</span>
											</div>
									</a></li>
									<li><a href="/Other/blog/26.html" target="_blank">
											<div class="story-content">
												<i class="green">重点导师</i>
												<p>各位伙伴，今天我们要和大家隆重介绍一位数信学院新的战略合作伙伴，将携手一起开启中美IT教育新篇章。</p>
											</div>
											<div class="story-info">
												<img src="/index/images/make-logo_c2b1b9f.jpg"
													alt="Make School">
												<p>Make School</p>
												<span>Computer Science Education</span>
											</div>
									</a></li>
									<li><a href="/Other/blog/7.html" target="_blank">
											<div class="story-content">
												<i>会员故事</i>
												<p>数信学院廖福钦</p>
											</div>
											<div class="story-info">
												<img
													src="${pageContext.request.contextPath}/index/images/student_4_3f00a8d.jpg"
													alt="jk_hero_4">
												<p>廖福钦</p>
												<span>职位：乒乓球协会会长</span>
											</div>
									</a></li>
								</ul>

							</div>

						</div>
					</div>

				</section>



			</div>
		</div>
	</div>
</body>
</html>

</body>
</html>



