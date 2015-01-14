
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
		<h3>Manage account</h3>

		<c:if test="${param.success eq true}">
			<div class="alert alert-success">operation done successfully!</div>
		</c:if>
		<c:if test="${not empty students}">
			<table class="table stripped">
				<c:forEach items="${students}" var="item">
					<tr>
						<td><c:out value="${item.id}" /></td>
						<td><c:out value="${item.name}" /></td>
						<td><c:out value="${item.email}" /></td>
						<td><c:out value="${item.password}" /></td>
						<td><c:out value="${item.dob}" /></td>
						<td><a href="<spring:url value="/remove/${item.id}.html" />">remove
								user</a></td>
						<td><a href="<spring:url value="/update/${item.id}.html" />">update
								user</a></td>

					</tr>

				</c:forEach>
			</table>
		</c:if>


		<c:if test="${not empty studentdata}">

			<form class="form-horizontal" role="form"
				action="/jdbctraining/submitupdateddata.html" method="POST">


				<form:errors path="name" cssClass="error" />
				<form:errors path="password" cssClass="error" />

				<div style="color: red;">
					<h4>
						<form:errors path="student1.*" />
					</h4>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Student-ID</label>
					<div class="col-sm-10">
						<label class="control-label col-sm-2" for="email">${studentdata.id}</label>
						<input type="hidden" class="form-control" name="id" id="id"
							placeholder="Enter email" value="${studentdata.id}">

					</div>
				</div>


				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="name" id="name"
							value="${studentdata.name}">

					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="email" id="email"
							placeholder="Enter email" value="${studentdata.email}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Password:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password"
							id="password" placeholder="Enter password"
							value="${studentdata.password}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">mobnno:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="mobno" id="mobno"
							placeholder="Enter password" value="${studentdata.mobno}">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Dob:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="dob" id="dob"
							placeholder="Enter dob" value="${studentdata.dob}">
					</div>
				</div>





				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form>

		</c:if>
	</div>
</div>

<%@ include file="footer.jsp"%>
<!-- Main component for a primary marketing message or call to action -->



</html>