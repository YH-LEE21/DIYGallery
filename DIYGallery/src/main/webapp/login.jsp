<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DIY Gallery</title>
        <link rel="shortcut icon" type="image/x-icon" href="https://previews.123rf.com/images/miceking/miceking1801/miceking180100600/93083990-%EA%BF%80%EB%B2%8C-%EC%9C%A1%EA%B0%81%ED%98%95%EC%97%90-%EA%BF%80-%EB%B2%8C%EC%A7%91-.jpg">
    
		<link rel="stylesheet" href="resource/css/header.css">
        <link rel="stylesheet" href="resource/css/login.css">
        <link rel="stylesheet" href="resource/css/foot.css">

    <!--swiper js관련-->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>

    <!--google meteral icon-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!--BootStrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
     rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</script>
    
  
</head>

<body style="background: url('resource/img/picture_2.jpg'); background-repeat: no-repeat; background-size: cover;">

    <%@ include file="common/header.jsp" %>

    <section class="login">

        <div class="inner">

            <form action="im?action=login" method="post">
            	<h2>로그인</h2>
            <div class="form-floating mb-3">
            
			  <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="id">
			  <label for="floatingInput">아이디</label>
			</div>
			<div class="form-floating">
			  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="pwd">
			  <label for="floatingPassword">비밀번호</label>
			</div>
				<br>
                <button type="submit" class="btn btn-primary">로그인</button>
                
              </form>
           
        </div>
    </section>
    <br>
    <%@ include file="common/foot.jsp" %>



</body>

</html>