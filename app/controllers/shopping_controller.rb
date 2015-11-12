class ShoppingController < ApplicationController
	@@menu = {"latte" => 5.0, "mocha" => 4.0, "iceCoffee" => 3.0, "hotChocolate" => 2.0, "HazelNut" => 15.0,"TastyCake" => 19.0, "SweetChok" => 21.0, "DelicioChocolate" => 23.0}

  def allItem
  end

  def singleProduct
  	@productName = "latte"
  	@unitPrice = 5.0
  	if request.query_string.present?

  		@productName = params[:type]
  		@unitPrice = @@menu[params[:type]]
  	end
  end

  def self.menu
  	@@menu
  end

  

  def getProduct(name)
  	@@menu[name]
  end

  def totalItemNumber
  	 PayController.shopItem.length
  end

  def getUnitPrice
  	@unitPrice
  end

  def getProductName
  	 @productName
  end

  helper_method :totalItemNumber
  helper_method :getProduct
  helper_method :getUnitPrice
  helper_method :getProductName

end
