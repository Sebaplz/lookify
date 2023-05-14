<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
 <div class="d-flex justify-content-end">
        <a href="/dashboard" class="ms-3 fs-3">Dashboard</a>
    </div>
    <form:form action="/dashboard" method="post" modelAttribute="song" class="mt-5">
            <p class="d-flex justify-content-between mx-3">
                <form:label path="titulo" class="fs-5">Title</form:label>
                <form:errors path="titulo" class="text-danger"/>
                <form:input path="titulo"/>
            </p>
            <p class="d-flex justify-content-between mx-3">
                <form:label path="artista" class="fs-5">Artist</form:label>
                <form:errors path="artista" class="text-danger"/>
                <form:input path="artista"/>
            </p>
            <p class="d-flex justify-content-between mx-3">
                <form:label path="clasificacion" class="fs-5">Rating (1 - 10)</form:label>
                <form:errors path="clasificacion" class="text-danger"/>
                <form:input placeholder="Ej: 1 - 10" type="number" path="clasificacion"/>
            </p>
            <div class="d-flex justify-content-end me-3">
                <input type="submit" value="Add Song" class="btn btn-primary"/>
            </div>
        </form:form>
    </div>
</div>

