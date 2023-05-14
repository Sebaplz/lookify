<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
		<div class="d-flex justify-content-between">
			<h5 class="mt-2">Song by artists: <c:out value="${q}"/></h5>
			<form action="/search" method="get">
				<div class="input-group">
					<input type="text" class="form-control" name="q">
					<button type="submit" class="btn btn-primary" type="button">New Search</button>
				</div>
			</form>
			<a href="/dashboard" class="fs-4">Dashboard</a>
		</div>
		<table class="table table-striped mt-5 border border-1">
			<thead>
				<tr>
					<th>Name</th>
					<th>Rating</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item">
					<tr>
						<td><a href="/songs/${item.id}"> <c:out
									value="${item.titulo}" /></a></td>
						<td><c:out value="${item.clasificacion}" /></td>
						<td>
							<form action="./delete/${item.id}" method="post">
								<input type="hidden" name="_method" value="delete">
								<input type="submit" value="delete" class="p-0 bg-transparent border border-0 text-primary text-decoration-underline">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>