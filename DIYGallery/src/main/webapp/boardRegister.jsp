<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DIY Gallery</title>
      <link rel="shortcut icon" type="image/x-icon" href="https://previews.123rf.com/images/miceking/miceking1801/miceking180100600/93083990-%EA%BF%80%EB%B2%8C-%EC%9C%A1%EA%B0%81%ED%98%95%EC%97%90-%EA%BF%80-%EB%B2%8C%EC%A7%91-.jpg">

	  <link rel="stylesheet" href="resource/css/header.css">
      <link rel="stylesheet" href="resource/css/foot.css">
      <link rel="stylesheet" href="resource/css/boardRegister.css">
	
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  
</head>
<body>
	<%@include file = "common/header.jsp" %>
		
		 <section class="boardRegister">

        <div class="inner">

            <form action="im?action=boardRegister" method="post">
            	<h2>게시판 작성</h2>
            <br>
            <div class="form-floating mb-3">
            
			  <input type="text" class="form-control" id="floatingInput" name="boardTitle">
			  <label for="floatingInput">제목</label>
			</div>
			<div class="form-floating">
					<textarea class="form-control" id="content floatingTextarea2" style="height: 200px" name="boardContent"></textarea>
					<label for="floatingTextarea2">내용</label>
			</div>
				<br>
                <button type="submit" class="btn btn-primary">게시하기</button>
                
              </form>
           
        </div>
		<br>
		</section>
	<%@include file = "common/foot.jsp" %>

</body>
</html>