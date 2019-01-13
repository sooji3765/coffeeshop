<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 태그라이브러리 선언  -->   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${path}/css/style.css">
    <link rel="stylesheet" href="${path}/css/info.css">
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
            <a class="nav-link" href="${path}/contact.do">Contact</a>
          </li>
          <li class="nav-item dropdown active">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          My Page
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <a class="dropdown-item" href="${path}/member/login.do">Logout</a>
	          <a class="dropdown-item" href="${path}/member/infomember.do">My info</a>
	          <a class="dropdown-item" href="${path}/shop/cart/cart_list.do">구매 목록</a>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
      		</li>
        </ul>        
      </div>
    </div>
  </nav><!--Main Navigation-->
  
  <section class="jumbotron text-center">
    <div class="container">
      <h1 class="jumbotron-heading">상품 정보</h1>
      <p class="lead text-muted">${list.product_name }</p>
    </div>
  </section>  
  
  
  <div class="container">
	<!--   <div class="py-5 text-center">
	    <img class="d-block mx-auto mb-4" src="/docs/4.2/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
	    <h2>상품 정보</h2>
	    <p class="lead">Below is an example form built entirely with Bootstrap’s form  controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
	  </div> -->

	<div class="row">
		<!-- 이미지 -->
		<div class="col-md-6">
			<img src="${path}/images/${list.product_url}" width="400" height="400" align="center">
		</div>
		
		<!-- 설명 -->
		<div class="col-md-6">
			<form name="form1" method="post" action="${path}/shop/cart/insert.do">
			<input type="hidden" value="${list.product_id}" id="product_id" name="product_id">
			<p>[원두] ${list.product_name}</p>
			<label>가격</label>
			<h2><fmt:formatNumber value="${list.price}" type="number"></fmt:formatNumber></h2>
			<div>
				<label>옵션</label>
				<select class="form-control" id="product_name" name="product_name">
				      <option value="${list.product_name}">${list.product_name}</option>     
				</select>
				<label>수량</label>
				<select class="form-control" id="amount" name="amount" >
				      <option value=1>1</option>
				      <option value=2>2</option>
				      <option value=3>3</option>
				      <option value=4>4</option>     
				</select>
			</div>
			
			<label>총 상품 금액</label>
			<h2 align="right" id="changeprice">1000원</h2>
			
			<div class="btn-group btn-group-lg">
				<button type="button" class="btn btn-secondary" id="cartBtn" onclick="cartCheck()">장바구니</button>
  				<button type="submit" class="btn btn-secondary" id="directBtn">바로구매</button>
			</div>
			</form>
		</div>
	</div><!-- row end  -->	

	<hr>
	
	<div><!-- 상품 정보  -->
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
		  <li class="nav-item">
		    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">상품정보</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">리뷰</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">상품문의</a>
		  </li>
		</ul>
		<div class="tab-content" id="pills-tabContent">
		  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
		 	${list.description }
		  </div>
		  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
		  	<table class="table">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">First</th>
			      <th scope="col">Last</th>
			      <th scope="col">Handle</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>Larry</td>
			      <td>the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
		  
		  </div>
		  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
		  
			<form>
				<div class="input-group mb-3">
				<textarea class="form-control" aria-label="with text" aria-describedby="button-addon2"></textarea>
				
				  <div class="input-group-append">
				    <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
				  </div>
				  </div>
			</form>		  
		  	
		  	<br>
		  	<table class="table">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">First</th>
			      <th scope="col">Last</th>
			      <th scope="col">Handle</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>Mark</td>
			      <td>Otto</td>
			      <td>@mdo</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Jacob</td>
			      <td>Thornton</td>
			      <td>@fat</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>Larry</td>
			      <td>the Bird</td>
			      <td>@twitter</td>
			    </tr>
			  </tbody>
			</table>
			
			
			
		  </div>
		</div>
	</div><!-- 상품 정보 -->
	<hr>
  
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

<script type="text/javascript">

	function cartCheck() {
		document.form1.action="${path}/shop/cart/insert_basket.do";
		document.form1.submit();	
		
	}
</script>

</body>
</html>