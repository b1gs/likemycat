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
    <link rel="stylesheet" href="<c:url value="resources/css/app-dropdown.css" />">
</head>

<body>

<!-- Not comleted  -->
<div id="header" class="menu">
    <ul class="w3-navbar w3-black">
        <li><a href="#" class="tablink w3-grey" onclick="openCity(event,'Hot')">Hot</a></li>
        <li><a href="#" class="tablink" onclick="openCity(event,'Best')">Best</a></li>
        <li><a href="#" class="tablink" onclick="openCity(event,'Fresh')">Fresh</a></li>
    </ul>
</div>


<div id="wrap">
	<table border="0" cellspacing="0" style="width:100%" >
	
		<tbody>
			<tr>
				<td style="vertical-align: top; text-align: center" class="main-b">
					<table class="inner_wrap" cellspacing="0" cellpadding="0">
						<colgroup>
							<col>
							<col class="inner_wrap_content">
						</colgroup>
						<tbody>
							<tr>
								<td> </td>
								<td style="padding-left: 0px; padding-right: 0px; text-align: left;">
									<div class="b-feed-panel" data-mode="hot"></div>
									
									<div class="stories">
										<c:forEach items="${postList}" var="post">
											<div class="story" data-story-id="4493954" data-visited="false" data-story-long="false">
											
												<!-- Not comleted  -->
												<div class="story_left" > 
													<div class="story__rating-block" data-vote="0" data-story-id="4493954" data-can-vote="true">
														Rate												
													</div>
												</div>
												
												<!-- Story Section -->
												<div>
													<!--  Story Header -->
													<div class="story__header">
														<!-- Not comleted  -->
														<div class="story__header-title">${post.title}</div>
														<!-- Not comleted  -->
														<div class="story__header-additional"></div>
														
													</div>
													
													<!--  Story Body -->
													<div class="story__wrapper" style="display: block">
														<div class="b-story__content b-story-blocks b-story-blocks_with-border" data-expanded="true">
															<div class="b-story-blocks__wrapper" style="">
																<img src="${contextPath}/files/${post.filename}" data-large-image="${contextPath}/files/${post.filename}" data-viewable="true" alt="description" style="" data-height="612">
															</div>
														</div>
													</div>
												</div>
												
											</div>
										</c:forEach>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
			
		</tbody>
	</table>

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
    }
    ;
</script>


</body>

<footer id="footer">
    Copyright © b1gs likemycat.net
</footer>

</html>