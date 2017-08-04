<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Spring Framework + Mybatis 
</h1>

<P>
	<a href ="list.do">게시글목록</a>
	<c:if test="${loginUser == null}">
	<a href = "loginForm.do">로그인페이지</a>
	</c:if>
	<c:if test="${loginUser != null}">
		${loginUser.email}님 환영합니다
		<a href="logout.do">로그아웃</a>
	</c:if>	
</P>
</body>
</html>
