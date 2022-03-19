<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DIY Gallery</title>
      <link rel="shortcut icon" type="image/x-icon" href="https://previews.123rf.com/images/miceking/miceking1801/miceking180100600/93083990-%EA%BF%80%EB%B2%8C-%EC%9C%A1%EA%B0%81%ED%98%95%EC%97%90-%EA%BF%80-%EB%B2%8C%EC%A7%91-.jpg">
    
      <link rel="stylesheet" href="resource/css/header.css">
      <link rel="stylesheet" href="resource/css/itemSearch.css">
      <link rel="stylesheet" href="resource/css/itemList.css">
      <link rel="stylesheet" href="resource/css/foot.css">

    <!--swiper js관련-->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>

    <!--google meteral icon-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        
    <script defer src="resource/js/index.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
</head>

 <%@ include file="common/header.jsp" %>

	<section class="itemSearch">
	      <div class="inner">
	        <form action="im?action=itemSearch" method="post">
	            <div class="input-group mb-3 yh2">
  					<input type="text" name="word" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" placeholder="검색할 내용을 여기에 입력해 주세요" style="font-size: 16px">
  					<input type="submit"  class="btn btn-primary" value="검색" style="padding: 20px;">
				</div>
	        </form>
	      </div>
	      
	    </section>
    <section class="itemList">

        <div class="inner">

            <!-- <h2>도서리스트</h2> -->
            
            <ul class="list-group">
            <c:forEach var="i" items="${itemList}">
            	<div class="accordion" id="accordionPanelsStayOpenExample">
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
				      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
				        <p>${i.title}</p>
				      </button>
				    </h2>
				    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
				      <div class="accordion-body">
				      	<img class = "" src = "${i.img}">
				      	<br>
				      	<strong><p> ${i.content}</p></strong>
				      	<br>
				      	<strong><p> 제작자 : ${i.author}</p></strong>
				   	  </div>
				    </div>
				  </div>
				</div>
            </c:forEach>   
            </ul>
            <br>
        </div>
        
    </section>
    <%@ include file="common/foot.jsp" %>
</body>
</html>