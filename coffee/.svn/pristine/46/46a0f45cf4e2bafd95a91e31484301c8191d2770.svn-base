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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"  href="${path}/css/style.css?ver=2">
    <link rel="stylesheet" href="${path}/css/index.css">

<title>Coffee Buy&Learn</title>

</head>
<!--Main Navigation-->

<body>
  <!--Navbar-->
  <nav class="navbar navbar-inverse navbar-expand-lg navbar-dark fixed-top scrolling-navbar" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="${path}/"><strong>CoffeeB&L</strong></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7"
        aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="${path}/">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${path}/shop/product/product_list.do">Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${path}/shop/lecture/lecture_list.do">Program</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${path}/contact.do">Contact</a>
          </li>
          <c:choose>
	          <c:when test="${sessionScope.userid!=null}">
		          <li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          My Page
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			          <a class="dropdown-item" href="${path}/member/logout.do">Logout</a>
			          <a class="dropdown-item" href="${path}/member/infomember.do">My info</a>
			          <a class="dropdown-item" href="${path}/shop/cart/cart_list.do">구매 목록</a>
			          <a class="dropdown-item" href="#">Something else here</a>
			        </div>
		      		</li>
	          </c:when>
	          <c:otherwise>
	          		<li class="nav-item">
		      			<a class="nav-link" href="${path}/member/login.do">Login</a>
	          		</li>
	          		<li class="nav-item">
	          			<a class="nav-link" href="${path}/admin/login.do">Admin Login</a>
	          		</li>
	          </c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </nav>
  


  <!--Intro Section-->
  <section class="view intro-video">
    
   <!--Carousel Wrapper-->
<div id="video-carousel-example2" class="carousel slide carousel-fade" data-ride="carousel">
  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#video-carousel-example2" data-slide-to="0" class="active"></li>
    <li data-target="#video-carousel-example2" data-slide-to="1"></li>
    <li data-target="#video-carousel-example2" data-slide-to="2"></li>
  </ol>
  <!--/.Indicators-->
  <!--Slides-->
  <div class="carousel-inner" role="listbox">
    <!-- First slide -->
    <div class="carousel-item active">
      <!--Mask color-->
      <div class="view">
        <!--Video source-->
        <video class="video-fluid" autoplay loop muted>
          <source src="${path}/video/coffee1.mp4" type="video/mp4" />
        </video>
        <div class="mask rgba-indigo-light"></div>
      </div>
      
      <!--Caption-->
      <div class="carousel-caption">
       	<h3 class="h3-responsive">YOU CAN DO BRISTA</h3>
       	<br>
       	<button type="button" class="btn btn-outline-light" onclick="location.href='${path}/member/register.do'">Get Started</button>
       </div>
      <!--Caption-->
    </div>
    <!-- /.First slide -->

    <!-- Second slide -->
    <div class="carousel-item">
      <!--Mask color-->
      <div class="view">
        <!--Video source-->
        <video class="video-fluid" autoplay loop muted>
          <source src="${path}/video/sfoodVideo2.mp4" type="video/mp4" />
        </video>
        <div class="mask rgba-purple-slight"></div>
      </div>

      <!--Caption-->
      <div class="carousel-caption">
        <div class="animated fadeInDown">
          <h3 class="h3-responsive">Super light mask</h3>
        </div>
      </div>
      <!--Caption-->
    </div>
    <!-- /.Second slide -->

    <!-- Third slide -->
    <div class="carousel-item">
      <!--Mask color-->
      <div class="view">
        <!--Video source-->
        <video class="video-fluid" autoplay loop muted>
          <source src="${path}/video/coffee2.mp4" type="video/mp4" />
        </video>
        <div class="mask rgba-black-strong"></div>
      </div>

      <!--Caption-->
      <div class="carousel-caption">
        <div class="animated fadeInDown">
          <h3 class="h3-responsive">Strong mask</h3>
        </div>
      </div>
      <!--Caption-->
    </div>
    <!-- /.Third slide -->
  </div>
  <!--/.Slides-->
  <!--Controls-->
  <a class="carousel-control-prev" href="#video-carousel-example2" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#video-carousel-example2" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->
</div>
<!--Carousel Wrapper-->
</section>

<!--Main Navigation-->

<!-- 설명  -->  
<div id="plan" class="container fluid text-center">
	</br>
	<h2>OUR SITE</h2>
	<br>
	<div class="row">
	<div class="col-sm-4">
		<div class="card border-0" style="width: 18rem;">
		  <img class="card-img-top" src="${path}/images/coffee-cup.png" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the </p>
		    <a href="#" class="btn btn-outline-secondary">Go somewhere</a>
		  </div>
		</div>
	</div>
	
	<div class="col-sm-4">
		<div class="card border-0" style="width: 18rem;">
		  <img class="card-img-top" src="${path}/images/coffee-cup.png" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <p class="card-text">Some quick example text to build on the </p>
		    <a href="#" class="btn btn-outline-secondary">Go somewhere</a>
		  </div>
		</div>
	</div>
	
	<div class="col-sm-4">
		<div class="card border-0" style="width: 18rem;">
	  <img class="card-img-top" src="${path}/images/coffee-cup.png" alt="Card image cap">
	  <div class="card-body">
	    <h5 class="card-title">구매</h5>
	    <p class="card-text">다양한 원두를 구매하세요.</p>
	    <a href="${path}/shop/product/product_list.do" class="btn btn-outline-secondary">GO SHOP</a>
	  </div>
	</div>
	</div>
	</div>
</div>

<section id="section4">
	<div class="container text-center">
		<h2>NEW INFOMATION</h2>
		<br>
		<div class="container" id="textarea">
		<p>Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		<button type="button" class="btn btn-outline-light btn-lg">CHECK NEW INFOMATION</button>
		<br>
		</div>
	</div>
</section>

<!-- another part -->
<div class="container text-center">
	</br>
	<h3 align="center">HIT PRODUCT</h3>
	</br>
	<div class="row">
		<div class="col-md-6 col-sm-6">
			<img class="img-responsive" src="${path}/images/new_bean.png" alt="새로운 bean">
		</div>
		<div class="col-md-6 col-sm-6">
			<h4>원두 이름</h4>
			</br>
			<p>상품 설명</p>
			<button type="button" class="btn btn-outline-dark">자세히 보러 가기</button>
		</div>
	</div> 
</div>

<!-- home section -->
<div id="home">
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-3"></div>
			<div class="col-md-7 col-sm-9">
				<h3>welcome to</h3>
				<h1>Our Coffee Shop</h1>
			</div>
		</div>
	</div>
</div>

<!-- divider section -->
<div class="divider">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6">
				<div class="divider-wrapper divider-one">
					<i class="fa fa-laptop"></i>
					<h2>Responsive</h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="divider-wrapper divider-two">
					<i class="fa fa-mobile"></i>
					<h2>Easy to use</h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
				</div>
			</div>
			<div class="col-md-4 col-sm-12">
				<div class="divider-wrapper divider-three">
					<i class="fa fa-life-ring"></i>
					<h2>Quick Support</h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
				</div>
			</div>
		</div>
	</div>
</div>

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
      <a href="" class="fa fa-google"></a>
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
<script type="text/javascript" src="${path}/js/main_nav.js"></script>


</body>
</html>