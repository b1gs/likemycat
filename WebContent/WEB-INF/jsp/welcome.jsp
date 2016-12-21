<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <title>Like My Cat</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="<c:url value="resources/css/main.css" /> " >
    
    <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/styles.css" /> " >
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/main.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.formalize/1.2/jquery.formalize.min.js"></script>

    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css" />
    <script src="resources/bootstrap/js/bootstrap.js"></script>
    
</head>

<body>

<!-- Not comleted  -->
<div id="page-header" >
    <ul class="w3-navbar w3-black">
        <li><a href="#" class="tablink w3-grey" onclick="openCity(event,'Hot')">Hot</a></li>
        <li><a href="#" class="tablink" onclick="openCity(event,'Best')">Best</a></li>
        <li><a href="#" class="tablink" onclick="openCity(event,'Fresh')">Fresh</a></li>
    </ul>
</div>

	<main id="content" >
		<section id="postWrapper" >
			<section>
				<div class="stories" >
					<div class="story">
						<div class="story-main">
							<div class="story-header">
								<div class="story-header-title">Fun Story</div>
								<div class="story-header-additional">
									<div class="story-toggle-button" title="Show Post" data-story-id="4697401" data-story-long="false" data-story-type="gtpost">
										<i class="i-sprite--inline-block i-sprite--feed__gtpost-hide"></i>
									</div>

									<!--/noindex-->
									<div class="story-header-additional-wrapper">
										<a class="story-comments-count story-to-comments" href="#">167 Comments</a> <img src="resources/images/user.svg" width="10" height="11" class="story__user-icon"><a class="story__author" href="#">alfer1224</a>
										<div class="story__date" title="20 dec 2016 at 7:30">6 hours back</div>
									</div>
								</div>
							</div>
							<div class="story-wrapper" style="display: block">
								<img class="post-image" src="resources/images/148221171912795221.png" />
							</div>
						</div>
						<div class="story-left">
							<div class="story-rating-block" data-vote="0" data-story-id="4687162" data-can-vote="true">
								<div class="story-rating-up" title=""></div>
								<div class="story-rating-count">
									1608
								</div>
								<div class="story-rating-down" title=""></div>
							</div>
						</div>
					</div>
					<c:forEach items="${postList}" var="post">
						<div class="story">
							<div class="story-main">
								<div class="story-header">
									<div class="story-header-title">${post.title} </div>
									<div class="story-header-additional">
										<div class="story-toggle-button" title="Show Post" data-story-id="4697401" data-story-long="false" data-story-type="gtpost">
											<i class="i-sprite--inline-block i-sprite--feed__gtpost-hide"></i>
										</div>
	
										<!--/noindex-->
										<div class="story-header-additional-wrapper">
											<a class="story-comments-count story-to-comments" href="#">167 Comments</a> <img src="resources/images/user.svg" width="10" height="11" class="story__user-icon"><a class="story__author" href="#">alfer1224</a>
											<div class="story__date" title="20 dec 2016 at 7:30">6 hours</div>
										</div>
									</div>
								</div>
								<div class="story-wrapper" style="display: block">
									<img class="post-image" src="${contextPath}/s/${post.filename}" >
								</div>
							</div>
							<div class="story-left">
								<div class="story-rating-block" data-vote="0" data-story-id="4687162" data-can-vote="true">
									<div class="story-rating-up" title=""></div>
									<div class="story-rating-count">
										1
									</div>
									<div class="story-rating-down" title=""></div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</section>
		</section>
	</main>

<!-- AUTHENTICATION SECTION -->
<div id="auth-container">

	<c:if test="${not empty user}">
    	<div id="tab_section">
	        <div class="signed-wrap w3-navbar w3-teal">
		        <form id="logoutForm" method="POST" action="${contextPath}/logout">
		            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		        </form>
	      		<div class="side-menu-wrap">
	      			<c:out value="Hello ${user}"></c:out> 
	      		</div>
	      		<div class="side-menu-wrap" >
	      			<a class="side-menu btn btn-info" href="${contextPath}/add" >Add post</a>
	      		</div>
	      		<div class="side-menu-wrap" >
	      			<a class="side-menu btn btn-info" href="#" >Profile</a>
	      		</div>
	      		<div class="side-menu-wrap" >
	      			<a class="side-menu btn btn-info" onclick="document.forms['logoutForm'].submit()">Logout</a>
	      		</div>
	      		
	        </div>
	
	    </div>
	</c:if>
	
	<c:if test="${empty user}">
    	
	
	    <div id="tab_section">
	        <div class="sign w3-navbar w3-teal">
	        		 Sing In
	        </div>
	
	    </div>
	
	
	    <div id="sign_in" class="auth">
	        <form method="POST" action="${contextPath}/j_security_check">
	            <input data-name="username" class="b-input" type="text" id="username" autocomplete="username"
	                   maxlength="255" name="username" placeholder="login">
	            <input data-name="password" class="b-input" type="password" id="password" autocomplete="password"
	                   maxlength="255" name="password" placeholder="password">
	                   
	            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	            <div class="login">
	            	<h5 class="sign-up-link text-center"><a href="${contextPath}/registration">Create an account</a></h4>
	                <button class="login" type="submit">Login</button>
	            </div>
	        </form>
	    </div>
    </c:if>
</div>

<script>
    openCity(null, "Hot");
    function openCity(evt, cityName) {
        var i, tablinks;
        var x = document.getElementsByClassName("news");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(cityName).style.display = "block";
        if (evt) {
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < x.length; i++) {
                tablinks[i].classList.remove("w3-grey");
            }
            evt.currentTarget.classList.add("w3-grey");
        }

    }
    ;
    openReg("sign_in");
    function openReg(cityName) {
        var i;
        var x = document.getElementsByClassName("auth");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        document.getElementById(cityName).style.display = "block";
    };
</script>


</body>

<footer id="footer">
    Copyright © b1gs likemycat.net
</footer>

</html>