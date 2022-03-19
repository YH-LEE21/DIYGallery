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
      <link rel="stylesheet" href="resource/css/memberRegister.css">
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

<body style = "background-image: url('data:image/jpeg;base64,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');">

    <%@ include file="common/header.jsp" %>

    <section class="memberRegister">
		
        <div class="inner" style="background: white; padding-top: 20px; padding-bottom: 20px; margin: 20px auto;" >
			<h2 style="margin-left: 20px">회원 가입</h2>
            <form action="im?action=memberAdd" method="post">
                <div class="row mb-3">
                    <label for="inputID" class="col-sm-2 col-form-label">ID</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputID" name="id" placeholder="example1312">
                    </div>
                  </div>

                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword" name="pwd" placeholder="기억가능한 비밀번호로 저장해주세요">
                  </div>
                </div>

                <div class="row mb-3">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputEmail" name="email" placeholder="example@naver.com">
                    </div>
                  </div>
                
                  <div class="row mb-3">
                    <label for="inputPhone" class="col-sm-2 col-form-label">Phone</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputPhone" name="phone" placeholder="010-0000-0000">
                    </div>
                  </div>
				<br>
                <button type="submit" class="btn btn-primary">회원 가입</button>
              </form>
            <br>
        </div>

    </section>

      <%@ include file="common/foot.jsp" %>




</body>

</html>