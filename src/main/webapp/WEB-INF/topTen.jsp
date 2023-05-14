<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <div class="d-flex justify-content-between">
        <h2>Top Ten Songs:</h2>
        <a href="/dashboard" class="fs-3">Dashboard</a>
    </div>
    <div class="border border-2 rounded p-2 mt-3">
        <c:forEach items="${topTen}" var="song">
                <h5><c:out value="${song.clasificacion}"/> - <a href="/songs/${song.id}"><c:out value="${song.titulo}"/></a>
                - <c:out value="${song.artista}" />
                </h5>
        </c:forEach>
    </div>
</div>