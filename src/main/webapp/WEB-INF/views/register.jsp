
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
				<a class="navbar-brand" href="<spring:url value="/" />">Spring Learning</a>
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
	<h2>Hello Spring MVC</h2>
	<p>
	<h3>Let's build a better Enterprise<h3>
	
	
	
	
	
	
	
	
	
	
 <form class="form-horizontal" role="form" action="/jdbctraining/submitregister.html" method="POST" >
 

<form:errors path="name" cssClass="error" />
<form:errors path="password" cssClass="error" />

    <div style="color: red;">
    <h4><form:errors path="student1.*"/></h4> 
    </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">student id:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="id" id="id" placeholder="Enter name">
    </div>
  </div>
 
 <div class="form-group">
    <label class="control-label col-sm-2" for="email">Name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="name" id="name" placeholder="Enter name">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="email" id="email" placeholder="Enter email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">mobnno:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="mobno" id="mobno" placeholder="Enter password">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Dob:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="dob" id="dob" placeholder="Enter dob">
    </div>
  </div>
  
 
 
 
 
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>

</div>
</div>

<%@ include file="footer.jsp"%>
<!-- Main component for a primary marketing message or call to action -->
