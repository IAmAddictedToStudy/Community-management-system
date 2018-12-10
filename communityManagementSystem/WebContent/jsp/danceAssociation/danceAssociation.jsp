<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>抖音个人主页介绍HTML源码</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="个人抖音视频首页.">
    <meta name="keywords" content="个人抖音视频首页">
    <meta name="application-name" content="抖音视频在线去水印下载">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="referrer" content="never">
    <link href="css/site.min.css?v12" rel="stylesheet">
    <link rel="shortcut icon" href="https://s3.bytecdn.cn/aweme/resource/web/static/image/logo/favicon_v2_7145ff0.ico">
	<embed src="Welcome.mp3" hidden="true" autostart="true" loop="true"> 
	
     <style type="text/css">
@media(min-width:720px) {  .container .navbar-header .logo-img {
    	float:none;  
    width: 60px;
    height: 60px;
    margin-top: 30px;
      margin-bottom: 20px;
    display: inline-block;
    background: url(/logo/douyin.png) no-repeat;
    background-size: contain;
            background: 0 0\9;
            filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/logo/douyin.png', sizingMethod='scale');
    }}
        @media (min-width: 768px) {
            .container .navbar-header .logo-img {margin-left: 0;}
        }
    </style>
	
	
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	
   <script src="https://cdn.staticfile.org/html5shiv/3.7.3/html5shiv.min.js"></script>
   <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
  
  <!-- <![endif]-->-->
  


  <style>



    #container {
      overflow: hidden;
      display: none;
      position: absolute;
      top: 0; left: 0; right: 0; bottom: 0;
    }

    #background_video {
      position: absolute;
      display: none;
      top: 50%; left: 50%;
      transform: translate(-50%, -50%);

      object-fit: cover;
      height: 112%; width: 100%;
    }

  
    #video_controls {
      position: absolute;
      left: 50%;
      transform: translate(-50%, 0);
    }

    #play img {
      width: 100px;
    }
    #pause img {
      width: 90px;
    }
    #pause {
      display: none;
    }

    @media (min-width: 768px) {
      #video_controls {
        display: none;
      }
          #background_video {

      display: block;
 
    }
          #container {
      
      display: block;
  
    }
          #video_cover {
    
      display: block;
 
    }
    }

    /* Demo page specific styles */

    #container {
      height: 100%;
    }

    #overlay {
      position: absolute;
      top: 0; right: 0; left: 0; bottom: 0;
      background: rgba(0,0,0,0.5);
    }

    #main_content {
    
      position: relative;
   


    }


  </style>


</head>
<body>
 
    <video id="background_video" loop muted></video>
    <div id="video_cover"></div>




    <section id="main_content">
      <div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
   
            <span class="logo-img"></span>
                <li>舞蹈协会主页介绍</li>
            
        </div>
        
  <!-- 收集导航链接、表单和其他内容以进行切换。 -->
 <div class="collapse navbar-collapse">

  </div>
    </div>
</div>

    <div class="row">



<p style="text-align: center;">
    <a target="_blank" rel="noreferrer" id="video_url" href="${pageContext.request.contextPath}/joinAssociation?id=9" class="btn down">加入我们</a>
    
    </p>
</br>
</br>
</br>
</br>


<span style="color:#999"><strong>详情说明:</strong></span>
        <div>
            <div style="float:left;">
                <ol>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">舞蹈协会</span>欢迎您...<span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">最佳开场舞</span><span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">最佳艺术团体</span><span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">舞蹈教育资源最佳</span><span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-danger">
                        推荐一个协会  挺不错！，
                        <a target="_blank" href=""><span style="color: #ff00ff;">点击游览</span></a>
                    </li>

                </ol>
            </div>
            <div style="float:left;">
                <ol>
                    <li><h4><span style="color: #ff9900;">最近活动</span></h4></li>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">街舞大赛</span>欢迎您...<span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">第一次舞蹈教学</span>欢迎你...<span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">第二次舞蹈教学</span>欢迎你...<span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-info">数信<span style="color: #ff9900;">第三次舞蹈教学</span>欢迎你...<span style="color: #ff9900;"> ...</span></li>
                    <li class="bg bg-danger">
                        推荐完整视频  挺不错！，
                        <a target="_blank" href="#"><span style="color: #ff00ff;">点击游览</span></a>
                    </li>

                </ol>
            </div>
        </div> 
<br/>         
        <br /> 
        <br /> 
        <br /> 
        <br /> 
        <br /> 
        <br /> 
        <br />       

            <div style="text-align: center;margin-top: 20px;">
                <p style="font-size: 13px;color: #999;"></p>
            </div>
        </div>






<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  <script src="js/bideo.js"></script>
  <script src="js/main.js"></script>
    </section>

</body>
</html>
