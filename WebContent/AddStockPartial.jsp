
	<form method="post" action="AddStockController">
	
	<div class="panel panel-primary">
		<div class="panel-heading">
			<div class="panel-title">Add Stock</div>
		</div>
		<div class="panel-body">
			
				<div class="form-group">
					<label for="stockname">Symbol</label>
					<input id="stockname" name="stocksymbol" class="form-control"
						placeholder="Enter Stock Symbol e.g AAPL" required/>
				</div>

				<div class="form-group">
					<label for="sel1">Stock Market</label> 
					<select class="form-control"
						id="sel1" name="stockexchange">
						<option selected>DOW</option>
						<option>NSE</option>
					</select>
				</div>
			
		</div>
		<div class="panel-footer">
			<button class="btn btn-primary" type="submit" > Add Stock </button>
		</div>
	</div>
	</form>
