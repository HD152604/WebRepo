<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Business Casual - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="/WebClass/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="/WebClass/css/business-casual.css" rel="stylesheet">

  </head>

  <body>
    <br>
	
	     <%-- 세션이 없는 경우 --%>
    <%
       UserVO user = (UserVO) session.getAttribute("user");
       if(user == null){
    %>
    <form class="form-inline my-2 my-lg-0" id="loginForm" method="post" action="/WebClass/bloglogin">
            <input class="form-control mr-sm-2" type="text" placeholder="ID"
               aria-label="ID" id="id" name="id" required
               <%if(request.getParameter("id")==null){ %>
				value=""
				<%}
				else{%>
				value="<%=request.getParameter("id") %>"
				<%} %>
				>
               <input class="form-control mr-sm-2" type="password" placeholder="PWD"
               aria-label="PWD" id="pwd" name="pwd" required>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그인</button>
         </form>
    <%
    }
    else{
    %>
    <%-- 세션이 있는 경우 --%>
       <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
       <li class="nav-item dropdown">
         <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <%= user.getName() %> 님
         </a>
         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
         <form action="/WebClass/bloglogout" method="post">
            <button type="submit" class="dropdown-item">Sign out</button>
            
          </form>
           

         </div>
       </li>
      </ul>
      <%} %>
       <br>
       


<div class="modal" id="myModal">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title">Login Error</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         </div>
       </div>
     </div>
   </div>

<div class="modal" id="mySign">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">회원가입</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal" id="myFinal">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title">회원가입 완료</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         </div>
       </div>
     </div>
   </div>

<form id = "finalForm">
      <div class="modal-body">
        <h6>[학년을 선택하세요]</h6>
        <input type ="radio" name = "grade" value="1" checked required>1학년
        <input type ="radio" name = "grade" value="2" checked required>2학년
        <input type ="radio" name = "grade" value="3" checked required>3학년
        <br />
        <br />
          <h6>[해당하는 반을 선택하세요]</h6>
    <select name="list" required>
        <option value="">-선택-</option>
        <option value="eb">1반</option>
        <option value="dc">2반</option>
        <option value="dc">3반</option>
        <option value="dc">4반</option>
        <option value="dc">5반</option>
        <option value="dc">6반</option>
    </select>
    <br>
    <br />
    <h6>[번호를 입력하세요]</h6>
    <input type="text" required /> -- 숫자만 입력하세요
    <br />
    <br />




        <h6>[사용하실 아이디를 입력하세요]</h6>
        <input type="text" id="signupId" placeholder="ID" required> -- 아이디 입력
        <br />
        <br />
        <h6>[사용하실 비밀번호를 입력하세요]</h6>
        <input type="password" id="signupPwd" placeholder="Password" required> -- 비밀번호 입력
        <br />
        <br />
        <h6>[이름을 입력하세요]</h6>
        <input type="text" required /> -- 이름 입력

      </div>
      <div class="modal-footer">
        <button class="btn btn-primary my-2 my-sm-0" data-dimsmiss="modal" type="submit">Sign Up</button>
      </div>
      </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">close</button>
    </div>
  </div>
</div>





    <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block">Welcome!</div>
    <div class="tagline-lower text-center text-expanded text-shadow text-uppercase text-white mb-5 d-none d-lg-block">Korea Digital Media Highschool | 2학년 6반 | 권현석</div>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-faded py-lg-4">
      <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">List</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item active px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="index.html">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="about.html">About</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="blog.html">Blog</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container">

      <div class="bg-faded p-4 my-4">
        <!-- Image Carousel -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid w-100" src="img/mountain.jpg" alt="">
              <div class="carousel-caption d-none d-md-block">
                <h3 class="text-shadow">Mountain</h3>
                <p class="text-shadow">Beautiful Mountain.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid w-100" src="img/river.jpg" alt="">
              <div class="carousel-caption d-none d-md-block">
                <h3 class="text-shadow">River</h3>
                <p class="text-shadow">Beautiful River.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid w-100" src="img/sea.jpg" alt="">
              <div class="carousel-caption d-none d-md-block">
                <h3 class="text-shadow">Sea</h3>
                <p class="text-shadow">Beautiful Sea.</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <!-- Welcome Message -->
        <div class="text-center mt-4">
          <div class="text-heading text-muted text-lg">Welcome To my</div>
          <h1 class="my-2">Gallery</h1>
          </div>
        </div>
      </div>

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">Today's
          <strong>Proverb</strong>
        </h2>
        <hr class="divider">

        <p class="text-center">A bird in my hand is worth two bird in the bush.<br>
            손안의 한 마리 새가 수풀속의 두 마리 새보다 낫다.</p>
        <p></p>
        <p></p>
      </div>

      <div class="bg-faded p-4 my-4">
        <hr class="divider">
        <h2 class="text-center text-lg text-uppercase my-0">
          <strong>Contact</strong>
        </h2>
        <hr class="divider">
        <p class="text-center">Phone Number - 010-4129-3803</p>
        <p class="text-center">Email Address - Hyunseock00@naver.com</p>
        <p class="text-center">Address - 경기도 안산시 단원구 사세충열로 94 한국디지털미디어고등학교</p>
      </div>

    <!-- /.container -->

    <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; KHS</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->

    <script src="/WebClass/vendor/bootstrap/js/login.js"></script>
    <script src="/WebClass/vendor/bootstrap/js/signup.js"></script>
    <script src="/WebClass/vendor/bootstrap/js/final.js"></script>

    <script src="/WebClass/vendor/jquery/jquery.min.js"></script>
    <script src="/WebClass/vendor/popper/popper.min.js"></script>
    <script src="/WebClass/vendor/bootstrap/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    <%
	if ("error".equals(request.getAttribute("msg"))) {
		
		%>
		
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Sign in Error');
		myModal.find('.modal-body').text('Wrong Identification');
		myModal.modal();
		
		<%
		}
		%>
	</script>

  </body>
</html>