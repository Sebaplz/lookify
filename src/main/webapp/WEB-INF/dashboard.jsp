<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <div class="d-flex justify-content-around mb-3">
        <a href="/songs/new" class="mt-2">Add New</a>
        <a href="/search/topTen" class="mt-2">Top Songs</a>
        <form action="/search" method="get">
            <div class="input-group">
                <input type="text" class="form-control" name="q">
                <button type="submit" class="btn btn-primary" type="button">Search Artist</button>
            </div>
        </form>
    </div>
    <div>
        <table class="table table-striped border border-1">
            <thead>
                <tr class="table-secondary">
                    <th scope="col">Name</th>
                    <th scope="col">Rating</th>
                    <th scope="col">actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${allSongs}" var="song">
                <tr>
                    <td><a href="/songs/${song.id}"><c:out value="${song.titulo}"/></a></td>
                    <td><c:out value="${song.clasificacion}"/></td>
                    <td><form action="/dashboard/${song.id}" method="post">
                            <input type="hidden" name="_method" value="delete">
                            <input type="submit" value="delete" class="bg-transparent border border-0 text-primary text-decoration-underline">
                        </form>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

