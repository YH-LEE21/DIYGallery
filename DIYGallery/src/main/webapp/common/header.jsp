<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <header>
        <div class="inner">
            <h1><a href="index.jsp" style="text-decoration: none;">DIY Gallery</a></h1>
	
            <ul class="util">
                <li><a href="#" style ="text-decoration: none;">Contact</a></li>
                <li><a href="#" style ="text-decoration: none;">Help</a></li>
                <li><a href="#" style ="text-decoration: none;">Login</a></li>
                <li><a href="#" style ="text-decoration: none;">Join</a></li>
                <li><a href="#" style ="text-decoration: none;">SiteMap</a></li>
            </ul>

            <ul id="gnb" >
                <li class="item">
                    <div class="item__name">
                        <a href="itemRegister.jsp" style ="text-decoration: none;">작품등록</a>
                    </div>
                </li>
                
                <li class="item">
                    <div class="item__name">
                        <a href="im?action=itemList" style ="text-decoration: none;">작품리스트</a>
                    </div>
				</li>
			
            <c:choose>

				<c:when test="${login eq 'OK'}"> 
					<li class="item">
		                <div class="item__name">
		                     <a href="im?action=boardList" style ="text-decoration: none;">게시판</a>
		                </div>
	  	            </li>
			  
				   <li class="item">
		                <div class="item__name">
		                     <a href="im?action=logout" style ="text-decoration: none;">로그아웃</a>
		                </div>
	   
	              </li>
	              
	               
			    </c:when>
			
				
				<c:otherwise> 
					<li class="item">
	                  <div class="item__name">
	                       <a href="memberRegister.jsp" style ="text-decoration: none;">회원가입</a>
	                  </div>
	                                       
	           	   	</li>
					<li class="item">
		                <div class="item__name">
		                    <a href="login.jsp" style ="text-decoration: none;">로그인</a>
		                </div>
	                </li>
			    </c:otherwise>
				
			</c:choose>
          
              
                 
              
                 
                 

        </div>
    </header>