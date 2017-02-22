<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
    <title>Like My Cat</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<c:url value="resources/css/w3.css" /> ">
	<script type="text/javascript" src="resources/js/app.js" ></script>
</head>

<body class='w3-light-blue' >

<div class="w3-container w3-teal w3-center">
  <h2>Like My Cat presents.. </h2>
</div>

<div class="w3-row w3-indigo" >

	<div class="w3-twothird w3-row w3-container w3-padding-large w3-amber" >
		<div class="w3-third w3-cyan" style="min-height:1px;" ></div>

		<div class="w3-twothird w3-khaki" >
			
			<c:forEach items="${postList}" var="post">
				<div class="post">
					<div class="w3-padding-top">
						<div class="w3-col w3-center" style="width:75px">
							<div><img src="resources/images/arroy_up.png" /></div>
							<div style="padding-top: 5px;padding-bottom: 3px;" >7338</div>
							<div><img src="resources/images/arroy_down.png" /></div>
						</div>
						<div class="w3-rest w3-green">
							<h3>${post.title}</h3>
							<div class="w3-small" > <a class="story-comments-count story-to-comments" href="#">167 Comments</a> <img src="resources/images/user.svg" width="10" height="11" class="story__user-icon"><a class="story__author" href="#">${post.user.username}</a> 6 hours</div>
						</div>
					</div>
					<div class="w3-row ">
						<div class="w3-col w3-pink" style="width:75px;min-height:1px;"></div>
						<div class="w3-rest w3-brown"><img class="w3-round-large" src="${contextPath}/s/${post.filename}" /></div>
					</div>
				</div>
			</c:forEach>
		
			<div class="post">
				<div class="w3-padding-top">
					<div class="w3-col w3-center" style="width:75px">
						<div><img src="resources/images/arroy_up.png" /></div>
						<div style="padding-top: 5px;padding-bottom: 3px;" >7338</div>
						<div><img src="resources/images/arroy_down.png" /></div>
					</div>
					<div class="w3-rest w3-green">
						<h3>Title section</h3>
						<div class="w3-small" >by b1gs 11 hours ago</div>
					</div>
				</div>
				<div class="w3-row ">
					<div class="w3-col w3-pink" style="width:75px;min-height:1px;"></div>
					<div class="w3-rest w3-brown"><img class="w3-round-large" src="resources/images/148221171912795221.png" /></div>
				</div>
			</div>

		</div>

	</div>

	<!-- Authentication Section -->
	<div class="w3-third w3-container w3-padding-large w3-blue">
	
		<!--  If user is authorized -->
		<c:if test="${not empty user}">
			
		</c:if>
	
	
		<!--  If user NOT is authorized -->
		<c:if test="${empty user}">
			<div class="w3-container w3-red" style="width: 80%;">
	
				<ul class="w3-center w3-navbar w3-light-blue" >
					<li style="width: 40%;"><a href="javascript:void(0)" class="w3-round tablink w3-text-blue w3-gray" onclick="openTab(event,'signIn')" >Sign In</a></li>
					<li style="width: 40%;"><a href="javascript:void(0)" class="w3-round tablink w3-text-blue" onclick="openTab(event,'signUp')">Sign Up</a></li>
				</ul>
	
				<!-- Sign In Part  -->
				<form:form method="POST" action="${contextPath}/j_security_check" id="signIn" class="loginFormContent w3-container w3-card-4 w3-light-grey" >
					<p>Use any of the w3-text-color classes to color your labels.</p>
					<p>
						<label class="w3-text-blue"><b>Login</b></label>
						<input class="w3-input w3-border w3-round" data-name="username" maxlength="15" name="username" placeholder="login"  type="text"></p>
					<p>
						<label class="w3-text-blue"><b>Password</b></label>
						<input class="w3-input w3-border w3-round" data-name="password"  type="password" id="password" maxlength="255" name="password" placeholder="password" ></p>
					<p>
						<button class="w3-btn w3-blue w3-round" type="submit" >Sign In</button></p>
				</form:form>
	
				<!-- Sign Up Part  -->
				<form:form id="signUp" method="POST" modelAttribute="userForm" class="loginFormContent w3-container w3-card-4 w3-light-grey" action="${contextPath}/welcome" style="display:none" >
					<p>Use any of the w3-text-color classes to color your labels.</p>
					<p>
						<label class="w3-text-blue"><b>Login</b></label>
						  <spring:bind path="username">
				            <div class="form-group ${status.error ? 'has-error' : ''}">
				                <form:input type="text" data-name="username" path="username" class="w3-input w3-border w3-round" placeholder="Username" />
				                <form:errors path="username" ></form:errors>
				            </div>
       					  </spring:bind></p>
					<p>
						<label class="w3-text-blue"><b>Password</b></label>
						 <spring:bind path="password">
				            <div class="form-group ${status.error ? 'has-error' : ''}">
				                <form:input type="password"  path="password" class="w3-input w3-border w3-round" placeholder="Password"></form:input>
				                <form:errors path="password"></form:errors>
				            </div>
				        </spring:bind></p>
					<p>
						<label class="w3-text-blue"><b>Repeat Password</b></label>
						<spring:bind path="passwordConfirm">
				            <div class="form-group ${status.error ? 'has-error' : ''}">
				                <form:input type="password" data-name="passwordConfirm" path="passwordConfirm" class="w3-input w3-border w3-round"
				                            placeholder="Confirm your password"></form:input> 
 				                <form:errors path="passwordConfirm"></form:errors> 
				            </div>
				        </spring:bind></p>
					<p>
						<button class="w3-btn w3-blue w3-round" type="submit">Sign Up</button></p>
				</form:form>
	
	
			</div>
		</c:if>
	</div>

</div>

</body>

<footer class="w3-container w3-teal w3-center" style="min-height: 35px;">
    Copyright © b1gs likemycat.net
</footer>

</html>