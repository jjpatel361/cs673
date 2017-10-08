package com.jsp.tuts;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.models.PortfolioStocksBean;

/**
 * Servlet implementation class AddStockController
 */
@WebServlet("/AddStockController")
public class AddStockController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStockController() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stockSymbol = request.getParameter("stocksymbol");
		String stockExchange = request.getParameter("stockexchange");
		System.out.println("Stock SYMBOL : " + stockSymbol);
		System.out.println("Stock Exchange : " + stockExchange);
		
		PortfolioStocksBean p = new PortfolioStocksBean();
		p.addActiveStock(stockSymbol);
		
		//TODO: Verify if the stock exists if DOW is selected. or NSE 
		
		//TODO: Handle Error
		response.sendRedirect("./dashboard.jsp");
	}

}
