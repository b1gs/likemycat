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
    <link rel="stylesheet" href="resources/css/main.css">
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


<!-- CONTENT SECTION -->
<div id="content">
    <div id="Hot" class="w3-container news">
        <div class="post">
        	<form:form method="POST" enctype="multipart/form-data" action="${contextPath}/add" modelAttribute="postForm">
<%-- 	            <spring:bind path="title"> --%>
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="text" path="title" name="title" class="form-control" placeholder="Post title..."
		                            autofocus="true" />
		                <form:errors path="title"></form:errors>
		            </div>
<%-- 		        </spring:bind> --%>
	            <!-- Create Post Section -->
	            	
<%-- 	            	<form:input type="hidden" path="filename" name="filename" value="123123" class="form-control" placeholder="Post title..." autofocus="true" /> --%>
<%-- 	            	<form:errors path="filename"></form:errors> --%>
	            <div id="post_type">
<!-- 	                <button id="create_post1" class="w3-btn w3-green"> -->
<!-- 	                    image -->
<!-- 	                </button> -->
	                
					<table>
<%-- 						<spring:bind path="file"> --%>
	            		<div class="form-group ${status.error ? 'has-error' : ''}">
							<tr><td>File to upload:</td><td><form:input path="file" type="file" name="file" class="w3-btn w3-green" /></td></tr>
							<form:errors path="file"></form:errors>
							<tr><td></td><td><form:button type="submit" value="Upload" class="w3-btn w3-green" >Upload</form:button></td></tr>
						</div>
<%-- 						</spring:bind> --%>
					</table>
			
<!-- 	                <button id="create_post2" class="w3-btn w3-green"> -->
<!-- 	                    video -->
<!-- 	                </button> -->
                </div>
           	</form:form>
            
<!--             <br><br> -->

<!--             <div id="1" align="left"> -->
<!--                 <button id="add_post" class="w3-btn w3-green"> -->
<!--                     Add post -->
<!--                 </button> -->
<!--                 <button id="save_post" class="w3-btn w3-green"> -->
<!--                     Save draft -->
<!--                 </button> -->
<!--             </div> -->
        </div>
    </div>

</div>


<div id="footer">
    Copyright � b1gs likemycat.net
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
</script>


</body>
</html>