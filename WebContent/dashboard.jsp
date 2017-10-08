<%@page import="java.util.ArrayList" %>
<%@page import="app.models.User"%>
<%@page import="app.models.PortfolioStocksBean" %>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>
<jsp:useBean id = "portfolioStockBean" class = "app.models.PortfolioStocksBean" /> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core"  prefix = "c"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Dash board</title>
</head>
<body>
<layout:assetimport></layout:assetimport>
<layout:header></layout:header>


<c:set var ="isUserLoggedIn" value="${request.getSession().getAttribute(\"isUserLoggedIn\")}" ></c:set>


<div class="container mt-50">
	<div class="row">
		<div class="col-md-4">
			 <div class="panel panel-default">
   				<div class="panel-heading">
					<div class="panel-title">
						Overview
					</div>
				</div>
    			<div class="panel-body">
    				
    				<c:set var="stockList" value="${portfolioStockBean.getActiveStocks()}" scope="page" />
    				<c:if test="${stockList.size() == 0}">
    					No Stock in portfolio
    				</c:if>
    				<c:if test="${stockList.size() > 0}">
    					<p>Stocks in Portfolio ${stockList.size()}</p>	
    					 <ul class="list-group">
						  
						  	<c:forEach begin="0" end="${stockList.size()-1}" var="i">
						  		<li class="list-group-item">
						    		${stockList.get(i)}
						    	</li>
							</c:forEach>
						  
						</ul> 
    				</c:if>
    			</div>
    			<div class="panel-footer">
    				<a class="btn btn-primary" href="AddStock.jsp">
    					Add Stock
    				</a>
    			</div>
  			</div>
		</div>
	
	<!-- Add stock form is here -->
	
	<jsp:include page="AddStockPartial.jsp"></jsp:include>
	
	
	</div>
</div>

</body>
</html>
