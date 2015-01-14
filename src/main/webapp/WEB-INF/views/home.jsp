
<%@ include file="header.jsp"%>

<div class="container">

	<!-- Static navbar -->
	<div class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<spring:url value="/" />">Spring
					Learning</a>
			</div>
			<div class="navbar-collapse collapse">


				<ul class="nav navbar-nav">
					<li class="${current == 'index' ? 'active' : ''}"><a
						href='<spring:url value="/" />'>Home</a></li>
					<li class="${current == 'register' ? 'active' : ''}"><a
						href="<spring:url value="/register.html" />">Register</a></li>
					<li class="${current == 'shopping' ? 'active' : ''}"><a
						href="<spring:url value="/student.html" />">Students</a></li>
					<li class="${current == 'shopping' ? 'active' : ''}"><a
						href="<spring:url value="/account.html" />">manage</a></li>
				</ul>

			</div>
			<!--/.nav-collapse -->
		</div>
		<!--/.container-fluid -->
	</div>


	<div class="jumbotron">
		<h3>Hello Spring CRUD</h3>
		<p>${commonmessage}
		<h4>
			<h4>
				<c:if test="${not empty students}">
					<table class="table stripped">
					<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>PASSWORD</th>
					<th>DOB</th>
					
					
					</tr>
						<c:forEach items="${students}" var="item">
							<tr>
                                <td><c:out value="${item.id}" /></td>
								<td><c:out value="${item.name}" /></td>
								<td><c:out value="${item.email}" /></td>
								<td><c:out value="${item.password}" /></td>
								<td><c:out value="${item.dob}" /></td>
								


							</tr>

						</c:forEach>
					</table>
				</c:if>
	</div>
</div>

<%@ include file="footer.jsp"%>
<!-- Main component for a primary marketing message or call to action -->



</html>