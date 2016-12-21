<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Post</title>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="resources/css/post.css">
    <script src="resources/js/app.js"></script>
</head>
<body>

<div id="header" class="menu">
    <ul class="w3-navbar w3-black">
        <li><a href="/add" class="tablink w3-grey" onclick="openCity(event,'Create Post')">Create Post</a></li>
        <li><a href="/hot" class="tablink" onclick="openCity(event,'Hot')">Hot</a></li>
        <li><a href="/best" class="tablink" onclick="openCity(event,'Best')">Best</a></li>
        <li><a href="/fresh" class="tablink" onclick="openCity(event,'Fresh')">Fresh</a></li>
    </ul>
</div>

<div id="content-wrap" >
<!-- CONTENT SECTION -->
<div id="content">
    <div id="Hot" class="w3-container news">
        <div class="post">
        	<form:form method="POST" enctype="multipart/form-data" action="${contextPath}/add" modelAttribute="postForm">
	            
	            <div class="form-group ${status.error ? 'has-error' : ''}">
	                <form:input id="post-title" type="text" path="title" name="title" class="form-control" placeholder="Post title..."
	                            autofocus="true" />
	                <form:errors path="title"></form:errors>
	            </div>
	           
	            <!-- Create Post Section -->
	            <div id="pick-image">
	           		<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:label path="">File to upload:</form:label><form:input path="file" type="file" name="file"  />
						<form:errors path="file"></form:errors>
					</div>
                </div>
                <div id="create-post" >
                	<form:button type="submit" value="Upload" class="w3-btn w3-green" >Upload</form:button>
                </div>
           	</form:form>
        </div>
    </div>

</div>


<footer id="footer">
    Copyright © b1gs likemycat.net
</footer>

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
</script>


</body>
</html>