<%@ page isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <div class="d-flex justify-content-end">
        <a href="/dashboard" class="fs-3">Dashboard</a>
    </div>
    <div class="d-flex">
        <div>
            <h2 class="mb-5">Title</h2>
            <h2 class="mb-5">Artist</h2>
            <h2 class="mb-5">Rating (1 - 10)</h2>
        </div>
        <div class="ms-5">
           <h2 class="mb-5"><c:out value="${songId.titulo}"/></h2>
           <h2 class="mb-5"><c:out value="${songId.artista}"/></h2>
           <h2 class="mb-5"><c:out value="${songId.clasificacion}"/></h2>
        </div>
    </div>
    <form action="/dashboard/${songId.id}" method="post" class="m-0">
        <input type="hidden" name="_method" value="delete">
        <input type="submit" value="Delete" class="fs-3 p-0 bg-transparent border border-0 text-primary text-decoration-underline">
    </form>
</div>


