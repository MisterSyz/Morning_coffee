class ShoppingController < ApplicationController
	@@menu = {"latte" => 5.0, "mocha" => 4.0, "iceCoffee" => 3.0, "hotChocolate" => 2.0}
  def allItem
  end

  def singleProduct
  end

  def self.menu
  	@@menu
  end

  

  def getProduct(name)
  	@@menu[name]
  end

 
  helper_method :getProduct

end
