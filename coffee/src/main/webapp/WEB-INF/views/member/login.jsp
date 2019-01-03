<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 태그라이브러리 선언  -->   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/css/style.css">
    <link rel="stylesheet" href="${path}/css/logincss.css">
 
<title>Coffee Buy&Learn</title>

</head>
<!--Main Navigation-->


<body>

  <!--Navbar-->
  <nav class="navbar navbar-inverse navbar-expand-lg navbar-dark fixed-top scrolling-navbar" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="${path}"><strong>CoffeeB&L</strong></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7"
        aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="${path}/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${path}/shop/product/product_list.do">Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${path}/shop/lecture/lecture_list.do">Program</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="${path}/member/login.do">Login <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${path}/admin/login.do">Admin Login</a>
          </li>
        </ul>        
      </div>
    </div>
  </nav>

<!--Main Navigation-->  

<!-- login Section -->
<section id="login">
<div class="login-page">
    <div class="container">
        <div class="row">
        <div class="col-md-6 center" >
                <h1>Login to our site</h1>
                <p>Use the form below to login to our website if you have an account.</p>
                <br>
                <br>
                <h1>First Time Our Site?</h1>
                <a href="${path}/member/register.do" class="btn btn-lg btn-outline-light" role="button">회원가입</a>
          
         </div>
 
         <div class="col-md-6 col-sm-offset-3 login-box wow fadeInUp">
 
                <div class="l-form-top">
                    <div class="l-form-top-left">
                        <h3>SIGN IN</h3>
                        <p>로그인 페이지 입니다.</p>
                    </div>
                    <div class="l-form-top-right">
                        <i class="fa fa-lock"></i>
                    </div>
                </div>
                <div class="l-form-bottom">
                    <form role="form" action="${path}/member/login_check.do" method="post" name="form1">
                        <div class="form-group">
                            <label class="sr-only" for="l-form-username">아이디</label>
                            <input type="text" name="userid" placeholder="아이디를 입력해주세요." class="l-form-username form-control" id="userid">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="l-form-password">비밀번호</label>
                            <input type="password" name="password" placeholder="비밀번호를 입력해주세요." class="l-form-password form-control" id="password">
                        </div>
                        <button type="submit" class="btn btn-default">로그인</button>
                        <div class="checkbox">
                            <input type="checkbox" id="remember-me" class="styled">
                            <label for="remember-me">Remember me</label>
                        </div>
                    </form>
                </div>
 
            </div>
        </div>
        
    </div>
 </div>
</section>




<!-- footer -->
<footer class="container-fluid text-center">
  <div class="row">
    <div class="col-sm-4">
      <h3>Contact Us</h3>
      <br>
      <h4>Our address and contact info here.</h4>
    </div>
    <div class="col-sm-4">
      <h3>Connect</h3>
      <a href="https://github.com/sooji3765" class="fa fa-github"></a>
      <a href="https://guestbook.blog.naver.com/susie3765" class="fa fa-share-alt-square"></a>
      <a href="#" class="fa fa-google"></a>
      <a href="#" class="fa fa-youtube"></a>
    </div>
    <div class="col-sm-4">
      <h3>Our Team</h3>
      <a href="#" class="fa fa-user-secret"></a>
      <a href="#" class="fa fa-user-secret"></a>
      <a href="#" class="fa fa-user-secret"></a>
      <a href="#" class="fa fa-user-secret"></a>
      </div>

  </div>
</footer>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script>
$(window).scroll(function(){
	$('nav').toggleClass('scrolled',$(this).scrollTop()>80);
});
</script>


</body>
</html>