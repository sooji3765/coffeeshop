<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 태그라이브러리 선언  -->   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
    <link rel="stylesheet" href="${path}/css/style.css">
    <link rel="stylesheet" href="${path}/css/list.css?ver=1">
<title>Coffee Buy&Learn</title>

</head>
<!--Main Navigation-->

<header>
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
          <li class="nav-item">
            <a class="nav-link" href="${path}/">Home</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="${path}/shop/product/product_list.do">Product<span class="sr-only">(current)</span></a>
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
</header>
<!--Main Navigation-->  

 <section class="jumbotron text-center">
    <div class="container">
      <h1 class="jumbotron-heading">Coffee Beans</h1>
      <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don’t simply skip over it entirely.</p>
      <p>
        <a href="#" class="btn btn-outline-light my-2">신 상품</a>
        <a href="#" class="btn btn-outline-light my-2">인기 원두</a>
      </p>
    </div>
  </section>

<section>
  <div class="album py-5 border-0">
    <div class="container">
      <div class="row">
      <c:forEach items="${list}" var="list">
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="230" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
            <title>Placeholder</title>
           	<image xlink:href="${path}/images/${list.product_url}" x="0" y="0" height="100%" width="100%" class="rounded"/>   
            </svg>
            <div class="card-body">
              <p class="card-text text-center font-weight-bold text-uppercase">${list.product_name}</p>
              <p class="card-text text-center"><fmt:formatNumber type="number" value="${list.price}"/>원</p>
              <div class="d-flex justify-content-between align-items-center">         
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='${path}/shop/product/product_detail/${list.product_id}'">구매하기</button>
              </div>
            </div>
          </div>
        </div>
        </c:forEach> 
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
<script src="${path}/js/main_nav.js"></script>


</body>
</html>