<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="resources/css/main.css" />
    <script src="resources/js/jquery.formalize.js"></script>

    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css" />
    <script src="resources/bootstrap/js/bootstrap.js"></script>

    <title>Login Page</title>
    <style>
        .errorblock {
            color: #ff0000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body onload='document.f.j_username.focus();'>

<div class="login-page">
  <div class="form">
    <form class="register-form">
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form">
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>

<!-- <div id="wrapper-login"> -->

<%--     <c:if test="${not empty error}"> --%>
<!--         <div class="errorblock"> -->
<!--             Your login attempt was not successful, try again.<br /> Caused : -->
<%--                 ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} --%>
<!--         </div> -->
<%--     </c:if> --%>

<%--     <form name='f' action="<c:url value='j_spring_security_check' />" method='POST'> --%>

<!--         <table class="horiz"> -->
<!--             <tr> -->
<!--                 <td>User:</td> -->
<!--                 <td><input type='text' name='j_username' value=''> -->
<!--                 </td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--                 <td>Password:</td> -->
<!--                 <td><input type='password' name='j_password' /> -->
<!--                 </td> -->
<!--             </tr> -->
<!--             <tr> -->
<!--                 <td colspan='2'><input name="submit" type="submit" value="submit" class="btn btn-primary" /> -->
<!--                 </td> -->
<!--             </tr> -->
<!--         </table> -->

<%--     </form> --%>

<!--     <br><br> -->
<!--     <h1>OR</h1><br> -->

<!--     <a href="/register">REGISTER</a> in case you don't have an account yet. -->

<!-- </div> -->
</body>
</html>