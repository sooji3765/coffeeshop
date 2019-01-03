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
    <link rel="stylesheet"  href="${path}/css/style.css">
<title>Coffee Buy&Learn</title>

</head>
<!--Main Navigation-->

<body>
<header>
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
            <a class="nav-link" href="${path}/">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${path}/shop/product/product_list.do">Product</a>
          </li>
          <li class="nav-item active">
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
			          <a class="dropdown-item" href="#">Something else here</a>
			        </div>
		      		</li>
	          </c:when>
	          <c:otherwise>
	          		<li class="nav-item">
		      		<a class="nav-link" href="${path}/member/login.do">Login</a>
	          		</li>
	          </c:otherwise>
          </c:choose>
        </ul>
        
      </div>
    </div>
  </nav>
  </header>
  <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">카트 (${map.cnt})</h1>
    <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
  </div>
</div><!-- end jumbo -->


<!--table cart  -->
<div class="container">

	<form action="" method="post">
	<table class="table table-hover center">
		<thead>
			<tr>
			<td align="center"><input type="checkbox" id="cart_all" name="cart_all"></td>
			<td align="center">상품 정보</td>
			<td>상품금액</td>
			<td>삭제</td>
			<td>수정</td>
			</tr>
		</thead>
		<tbody >
			<c:forEach items="${map.list}" var="row">		
				<tr>
				<td align="center"><input type="checkbox" id="cart_id" name="cart_id" value="${row.cart_id}"></td>
				<td>
					<div class="row">
					<div class="col-4" >
						<img src="${path}/images/coffee-bg.jpg" height="100" width="100">
					</div>
					<div class="col-8">
						<p>${row.product_name}</p>
						<label>수량</label>
						<select class="form-control" id="amount" name="amount" value="${row.amount}">
						      <option value=1>1</option>
						      <option value=2>2</option>
						      <option value=3>3</option>
						      <option value=4>4</option>     
						</select>
					</div>
					</div>
				</td>
				<td><h4><fmt:formatNumber type="number" value="${row.money}"/></h4></td>
				<td><button type="button" onclick="delete()" class="btn btn-outline-danger">삭제</button></td>
				<td><button type="button" onclick="modify()" class="btn btn-outline-default">수정</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<hr>
	
	<hr>
	<div align="center">
	<button class="btn" type="button" onclick="location.href='${path}/shop/product/product_list.do'">쇼핑 계속하기</button>
	<button class="btn" type="submit">구매하기</button>
	</div>
	</form>
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


</body>
</html>