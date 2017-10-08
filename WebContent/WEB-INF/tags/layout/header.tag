<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<nav class="navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Portfolio Manager</a>
    </div>
    <ul class="nav navbar-nav">
      <%
      if(request.getSession().getAttribute("isUserLoggedIn")!=null) {
      %>	
      <li class="active"><a href="dashboard.jsp">Home</a></li>
      <li><a href="#">Add Stock</a></li>
      <li><a href="#">View Transactions</a></li>
      <li>
      	<a href="#">Export</a>
      </li>
      <%}%>
    </ul>
    <ul class="nav navbar-nav navbar-right">
	  <li><a href="LogoutController">Logout</a></li>
	</ul>
  </div>
</nav>

