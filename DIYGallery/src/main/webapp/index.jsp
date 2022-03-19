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
      <link rel="stylesheet" href="resource/css/index.css">
      <link rel="stylesheet" href="resource/css/foot.css">
   <!-- swiper js 관련 -->
   <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
   <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
   <!--google meteral icon-->
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
     
    <script defer src="resource/js/index.js"></script>
   

</head>
<body>

<%@ include file="common/header.jsp" %>

    <div class="figure">

        <!-- Swiper -->
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide"><img src="resource/img/main1.jpg" alt="사진1"></div>
          <div class="swiper-slide"><img src="resource/img/main2.jpg" alt="사진2"></div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
      </div>
    </div>
    </figure>

    <section>
        <div class="inner">
            <h1>RECENT NEWS</h1>
            <div class="wrap">
                <article>
                    <div class="pic">
                        <img src="resource/img/picture_1.jpg" alt="1번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">DIY KIT 구매</a></h2>
                    <p>
                    언택트 시대 집에서 안전하게!
					아름다운 나만의 작품을 만들어보세요.
					</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="resource/img/picture_2.jpg" alt="2번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">원데이 클래스</a></h2>
                    <p>언택트 시대 집에서 안전하게!
                    아름다운 나만의 작품을 만들어보세요.
                    </p>
                </article>

                <article>
                    <div class="pic">
                        <img src="resource/img/picture_3.jpg" alt="3번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">작품 구매</a></h2>
                    <p>언택트 시대 집에서 안전하게!
                    아름다운 나만의 작품을 만들어보세요.</p>
                </article>
            </div>
        </div>
        <div class="gallery">
        	<h1>Gallery</h1>
        	<div class="wrap">
                <article>
                    <div class="pic">
                        <img src="resource/img/gallery1.jpg" alt="1번째 콘텐츠 이미지">
                    </div>
                </article>

                <article>
                    <div class="pic">
                        <img src="resource/img/gallery2.jpg" alt="2번째 콘텐츠 이미지">
                    </div>
                </article>

                <article>
                    <div class="pic">
                        <img src="resource/img/gallery3.jpg" alt="3번째 콘텐츠 이미지">
                    </div>
                </article>
                <article>
                    <div class="pic">
                        <img src="resource/img/gallery4.jpg" alt="4번째 콘텐츠 이미지">
                    </div>
                </article>
                <article>
                    <div class="pic">
                        <img src="resource/img/gallery5.jpg" alt="5번째 콘텐츠 이미지">
                    </div>
                </article>
                <article>
                    <div class="pic">
                        <img src="resource/img/gallery6.jpg" alt="6번째 콘텐츠 이미지">
                    </div>
                </article>
                <article>
                    <div class="pic">
                        <img src="resource/img/gallery7.jpg" alt="7번째 콘텐츠 이미지">
                    </div>
                </article>
                <article>
                    <div class="pic">
                        <img src="resource/img/gallery8.jpg" alt="8번째 콘텐츠 이미지">
                    </div>
                </article>
                <article>
                    <div class="pic">
                        <img src="resource/img/gallery9.jpg" alt="9번째 콘텐츠 이미지">
                    </div>
                </article>
            </div>
        </div>
        
        
    </section>
    

   <%@ include file="common/foot.jsp" %>

</body>
</html>