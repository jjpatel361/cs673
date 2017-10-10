/**
 * 
 */
package app.models;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * @author Jay Patel
 *
 */
public class PortfolioStocksBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9107450725433889423L;
	
	static ArrayList<String> activeStocks = new ArrayList<>();

	public ArrayList<String> getActiveStocks() {
		return activeStocks;
	}

	public void setActiveStocks(ArrayList<String> stocks) {
		activeStocks = stocks;
	}
	
	public void addActiveStock(String stockSymbol) {
		activeStocks.add(stockSymbol);
	}
	
	
}
