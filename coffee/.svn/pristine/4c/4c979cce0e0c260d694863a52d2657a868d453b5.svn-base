<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 태그라이브러리 선언  -->   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    

    <title>Dashboard ADMIN</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Custom styles for this template -->
    <link href="${path}/css/dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="${path}/">Coffee B&L</a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="${path}/admin/logout.do">Logout</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="home"></span>
                  Dashboard
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file"></span>
                  Orders
                </a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="${path}/admin/dashboard_product.do">
                  <span data-feather="shopping-cart"></span>
                  Products<span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${path}/admin/dashboard_member.do">
                  <span data-feather="users"></span>
                  Members
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="bar-chart-2"></span>
                  Reports
                </a>
              </li>
              <li class="nav-item ac">
                <a class="nav-link" href="${path}/admin/dashboard_lecture.do">
                  <span data-feather="layers"></span>
                  Lecture
                </a>
              </li>
            </ul>

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Saved reports</span>
              <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Current month
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Last quarter
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Social engagement
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Year-end sale
                </a>
              </li>
            </ul>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">상품 수정 페이지 입니다</h1>
          </div>
            <div class="container">
            	<form name="form1" method="post" enctype="multipart/form-data">
				  <div class="form-group">
				    <label for="exampleFormControlInput1">상품명</label>
				    <input type="text" class="form-control" value="${list.product_name}" id="product_name" name="product_name" placeholder="상품명을 입력해주세요">
				  </div>
				  <div class="form-group">
				    <label for="exampleFormControlSelect1">수량</label>
				    <select class="form-control" id="product_amount" name="product_amount">
				      <option>10</option>
				      <option>20</option>
				      <option>30</option>
				      <option>40</option>
				      <option>50</option>
				    </select>
				  </div>
				  <div class="form-group">
				    <label for="inputPrice">상품 가격</label>
				     <input type="number" class="form-control" value="${list.price}" id="price" name="price" placeholder="상품가격을 입력해주세요">
				  </div>
				  <div class="form-group">
				    <label for="exampleFormControlTextarea1">상품 설명</label>
				    <textarea class="form-control" id="description" name="description" rows="3">${list.description}</textarea>
				  </div>
				  <div class="form-group">
				    <label for="exampleFormControlFile1">상품 이미지 등록</label>
				    <input type="file" class="form-control-file" id="file1" name="file1">
				  </div>
				  <div class="form-group">
				 	<input type="button" value="등록"  onclick="product_write()">
				  </div>
				</form>
            </div>
  
        </main>
      </div>
    </div>


    <!-- Placed at the end of the document so the pages load faster -->
   
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>
    
    <script type="text/javascript">

	function product_write(){

	//태그를 name 으로 조회할경우
	// var product_name = docucment.form1.product_name.value;
	
	// 태그를 id로 조회할 경우
	var product_name =$("#product_name").val();
	var price=$("#price").val();
	var description = $("#description").val();
	
	if(product_name==""){
		alert("상품이름을 입력하세요.");
		$("#product_name").focus();
		return;
	}
	if(price==""){
		alert("상품가격을 입력하세요.");
		$("#price").focus();
		return;
	}
	if(description==""){
		alert("상품설명을 입력하세요.");
		$("#description").focus();
		return;
	}
	
	document.form1.action="${path}/shop/product/insert.do";
	document.form1.submit();	
}
</script>

  </body>
</html>
