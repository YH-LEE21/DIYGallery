<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="https://previews.123rf.com/images/miceking/miceking1801/miceking180100600/93083990-%EA%BF%80%EB%B2%8C-%EC%9C%A1%EA%B0%81%ED%98%95%EC%97%90-%EA%BF%80-%EB%B2%8C%EC%A7%91-.jpg">
    
    <title>DIY Gallery</title>
    
      <link rel="stylesheet" href="resource/css/header.css">
      <link rel="stylesheet" href="resource/css/itemReister.css">
      <link rel="stylesheet" href="resource/css/foot.css">
    
    <!-- swiper js 관련 -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    
    <!--google meteral icon-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <script defer src="resource/js/index.js"></script>
  
</head>

<body>

    <%@ include file="common/header.jsp" %>
	<br>
    <section class="itemRegister">

        <div class="inner">
	
            	<!-- 아이템 등록 -->
                <form action="im?action=itemAdd" method="post" enctype= "multipart/form-data">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="author floatingInput" name="author">
					  	<label for="floatingInput">만든 이</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class = "form-control" id="title floatingInput" name="title">
					  	<label for="floatingInput">제목</label>	
					</div>
					<div class="form-floating">
						<textarea class="form-control" id="content floatingTextarea2" style="height: 200px" name="content"></textarea>
						<label for="floatingTextarea2">내용</label>
					</div>
					<br>
					<div class="input-group">
						<input type="file" class="form-control" id="image inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload" name="image">
				    </div> 
					<br>
                    <input type="submit" class="btn btn-outline-success" value = "등록">
                 </form>
        </div>

    </section>
	<br>
    
  <%@ include file="common/foot.jsp" %>


</body>

</html>