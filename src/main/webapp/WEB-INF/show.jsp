<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book</title>
</head>
<body>
	<h1>Title: ${book.title}</h1>
	<h3>Description: ${book.description}</h3>
	<h3>Language: ${book.language}</h3>
	<h3>Number of Pages: ${book.numberOfPages}</h3>
</body>
</html>