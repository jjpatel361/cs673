<%@page import="java.util.ArrayList" %>
<%@page import="app.models.UserBean"%>
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
	
	<!-- -TODO: Create a separte partial -->
		<div class="col-md-4">
			 <div class="panel panel-primary">
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
    				<p>Stocks in Portfolio ${stockList.size()}</p>	
    			</div>
  			</div>
		</div>
	
	<!-- Add stock form is here -->
	<div class="col-md-4">
		<jsp:include page="AddStockPartial.jsp"></jsp:include>
	</div>
	
	<div class="col-md-4">
		<jsp:include page="AddTransactionPartial.jsp"></jsp:include>
	</div>
	</div>
</div>

</body>
</html>
