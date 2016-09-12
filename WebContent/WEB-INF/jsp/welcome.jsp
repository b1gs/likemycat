<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div id="header" class="menu">
    <ul class="w3-navbar w3-black">
        <li><a href="#" class="tablink w3-grey" onclick="openCity(event,'Hot')">Hot</a></li>
        <li><a href="#" class="tablink" onclick="openCity(event,'Best')">Best</a></li>
        <li><a href="#" class="tablink" onclick="openCity(event,'Fresh')">Fresh</a></li>
    </ul>
</div>


<!-- CONTENT SECTION -->
<div id="content">
    <div id="Hot" class="w3-container news">
        <div class="post" >
            <table>
                <tr class="post_header" >
                    <td class="post_rate" align="center" width="100px">
                        <ul class="post_rate">
                            <li><img src="resources/images/arroy_up.png"/></li>
                            <li>0</li>
                            <li><img src="resources/images/arroy_down.png"/></li>
                        </ul>
                    </td>
                    <td  align="left">
                        <ul class="post_title">
                            <li>Look at my pretty kitty!!!</li>
                            <li class="title_desc">
                                <h6>
                                    <img src="resources/images/hide_over_tgp.png" />
                                    <a href="">0 comments;</a>
                                    comming from
                                    <a href="">b1gs</a>
                                    4 hours ago;
                                </h6>
                            </li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><img src="resources/images/fibi.jpg" width="70%" alt="fibi"/></td>
                </tr>

            </table>
        </div>
    </div>

    <div id="Best" class="w3-container news">
        <h2>Best</h2>
        <p>Best content</p>
    </div>

    <div id="Fresh" class="w3-container news">
        <h2>Fresh</h2>
        <p>Fresh content</p>
    </div>
</div>

<!-- AUTHENTICATION SECTION -->
<div id="auth_container">
    <div id="tab_section">
        <ul class="sign w3-navbar w3-teal">
            <li><a href="#" onclick="openReg('sign_in')">Sing In</a></li>
            <li><a href="#" onclick="openReg('sign_up')">Sign Up</a></li>
        </ul>

    </div>

    <div id="sign_in" class="auth">
        <form method="POST" action="${contextPath}/login">
            <input data-name="username" class="b-input" type="text" id="username" autocomplete="username"
                   maxlength="255" name="username" placeholder="login">
            <input data-name="password" class="b-input" type="password" id="password" autocomplete="password"
                   maxlength="255" name="password" placeholder="password">
                   
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <div class="login">
                <button type="submit">Login</button>
            </div>
        </form>
    </div>
    <div id="sign_up" class="auth">
        <form>
            <input class="b-input" type="text" id="username" autocomplete="username" maxlength="255" name="username"
                   placeholder="login"><br>
            <input class="b-input" type="password" id="reg_password" autocomplete="password" maxlength="255"
                   name="password"
                   placeholder="password"><br>
            <input class="b-input" type="password" id="reg_password_repeat" autocomplete="password" maxlength="255"
                   name="password"
                   placeholder="repeat password">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <div class="login">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</div>

<div id="footer">
    Copyright © b1gs likemycat.net
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

</html>