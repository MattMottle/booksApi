<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Books</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="container">
		<h1> All Books</h1>
		<table class="table table-striped" style="width: 700px;">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Title</th>
		      <th scope="col">Description</th>
		      <th scope="col">Language</th>
		      <th scope="col">Pages</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach var="book" items="${books}">
			    <tr>
			      <th scope="row">${book.id}</th>
			      <td><a href="http://localhost:8080/books/${book.id}"><c:out value="${book.title}"/></a></td>
			      <td><c:out value="${book.description}"/></td>
			      <td><c:out value="${book.language}"/></td>
			      <td><c:out value="${book.numberOfPages}"/></td>
			    </tr>
			</c:forEach>
		  </tbody>
	</table>
	</div>
</body>
</html>