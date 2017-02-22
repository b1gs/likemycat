<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
	<link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">
    <script type="text/javascript" src="js/app.js" ></script>
    <meta charset="UTF-8">
    <title>Create Post</title>
    
<!--     <meta charset="UTF-8"> -->
<!--     <title>Create Post</title> -->
<!--     <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"> -->
<!--     <link rel="stylesheet" href="resources/css/post.css"> -->
<!--     <script src="resources/js/app.js"></script> -->
</head>
<body>

<!-- <div id="header" class="menu"> -->
<!--     <ul class="w3-navbar w3-black"> -->
<!--         <li><a href="/add" class="tablink w3-grey" onclick="openCity(event,'Create Post')">Create Post</a></li> -->
<!--         <li><a href="/hot" class="tablink" onclick="openCity(event,'Hot')">Hot</a></li> -->
<!--         <li><a href="/best" class="tablink" onclick="openCity(event,'Best')">Best</a></li> -->
<!--         <li><a href="/fresh" class="tablink" onclick="openCity(event,'Fresh')">Fresh</a></li> -->
<!--     </ul> -->
<!-- </div> -->

<div class="w3-container w3-teal w3-center">
    <h2>Like My Cat presents.. </h2>
</div>

<div class="w3-row w3-center  w3-blue" >

    <div class="w3-quarter " style="min-height: 1px;"></div>
    <div class="w3-half w3-green">
        <form:form class="w3-container w3-card w3-light-grey" method="POST" enctype="multipart/form-data" action="${contextPath}/add" id="postForm" modelAttribute="postForm" >
            <p class="w3-xxlarge w3-lobster font-effect-brick-sign">Show your pet to other's:</p>
            <p>
               <form:label class="w3-text-blue w3-left w3-margin-left" path=""><b>Title:</b></form:label><br>
            <p>
               <form:input class="w3-input w3-border w3-round w3-margin-left" name="title" path="title" type="text" autofocus="true" placeholder="Type title here" style="width: 60%;"/></p>
            <p>
               <label class="w3-text-blue w3-left w3-margin-left"><b>Image to upload:</b></label><br>
            <p>
               <input id="filePicker" path="file" type="file" name="file" class="w3-input w3-border w3-round w3-margin-left" style="width: 60%;" onchange="showImage(event);"/>
            <p>
               <img id="image" class="w3-left w3-round-large w3-margin-bottom w3-margin-left" src="" />
               <br>
               <input class="w3-input w3-container w3-center w3-round" type="submit" value="Get a try!" style="margin-left:30%;width: 40%;height: 35px;clear: left;clear: right;clear: both;">
            <p>

        </form:form>
    </div>
    <div class="w3-quarter" style="min-height: 1px;"></div>
</div>

<!-- <div id="content-wrap" > -->
<!-- <!-- CONTENT SECTION --> -->
<!-- <div id="content"> -->
<!--     <div id="Hot" class="w3-container news"> -->
<!--         <div class="post"> -->
<%--         	<form:form method="POST" enctype="multipart/form-data" action="${contextPath}/add" modelAttribute="postForm"> --%>
	            
<%-- 	            <div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<%-- 	                <form:input id="post-title" type="text" path="title" name="title" class="form-control" placeholder="Post title..." --%>
<%-- 	                            autofocus="true" /> --%>
<%-- 	                <form:errors path="title"></form:errors> --%>
<!-- 	            </div> -->
	           
<!-- 	            Create Post Section -->
<!-- 	            <div id="pick-image"> -->
<%-- 	           		<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<%-- 						<form:label path="">File to upload:</form:label><form:input path="file" type="file" name="file"  /> --%>
<%-- 						<form:errors path="file"></form:errors> --%>
<!-- 					</div> -->
<!--                 </div> -->
<!--                 <div id="create-post" > -->
<%--                 	<form:button type="submit" value="Upload" class="w3-btn w3-green" >Upload</form:button> --%>
<!--                 </div> -->
<%--            	</form:form> --%>
<!--         </div> -->
<!--     </div> -->

<!-- </div> -->
<!-- </div> -->


<footer class="w3-container w3-teal w3-center" style="min-height: 35px;">
    Copyright © b1gs likemycat.net
</footer>


</body>
</html>