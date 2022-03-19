<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DIY Gallery</title>
		<link rel="shortcut icon" type="image/x-icon" href="https://previews.123rf.com/images/miceking/miceking1801/miceking180100600/93083990-%EA%BF%80%EB%B2%8C-%EC%9C%A1%EA%B0%81%ED%98%95%EC%97%90-%EA%BF%80-%EB%B2%8C%EC%A7%91-.jpg">
		

		<link rel="stylesheet" href="resource/css/header.css">
        <link rel="stylesheet" href="resource/css/boardList.css">
        <link rel="stylesheet" href="resource/css/foot.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background: url('resource/img/picture_2.jpg'); background-repeat: no-repeat; background-size: cover";>
	<%@ include file="common/header.jsp" %>
	
	<section class="boardSearch">
	      <div class="inner">
	        <form action="im?action=boardSearch" method="post">
	            <div class="input-group mb-3 yh2">
  					<input type="text" name="word2" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" placeholder="검색할 내용을 여기에 입력해 주세요" style="font-size: 16px">
  					<input type="submit"  class="btn btn-primary" value="검색" style="padding: 20px;">
				</div>
	        </form>
	      </div>
	</section>
	    
	<section class = "boardlist">
			<div>
				<table id="t01" class="table table-striped" style="margin: 0 auto; width: 700px ;padding: 5px; font-size: 16px;">
						  <tr>
						    <th>번호</th>
						    <th>제목</th> 
						    <th>작성날짜</th>
						  </tr>
						  <c:forEach var="b" items="${boardList}">
						  	<tr>
							  	<td>${b.bid}</td>
							  	<td ><a href="boardSelect.jsp?title3=${b.title}&content3=${b.content}&day3=${b.day}">${b.title}</a></td>
							  	<td>${b.day}</td>
						  	</tr>
						  </c:forEach>
					</table>
				</div>
				<p class ="yh1"><a href="boardRegister.jsp">게시판 작성</a></p>
	</section>
	<%@ include file="common/foot.jsp" %>
</body>

</html>