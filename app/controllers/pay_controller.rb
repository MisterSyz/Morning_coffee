class PayController < ApplicationController
  @@shopItem = Array.new(0)
  def shoppingCart
  	num = params[:quantity].to_i
  	for i in 0 .. num - 1
  		@@shopItem.push(params[:type])
  	end
  end

  def checkout
  end

  def totalItemNumber
  	@@shopItem.length
  end 

  def self.shopItem
  	@@shopItem
  end

  def totalPrice
  	coffeeMenu = ShoppingController.menu
  	priceSum = 0
  	for i in 0 .. @@shopItem.length - 1
  		priceSum = priceSum + coffeeMenu[@@shopItem.at(i)]
  	end
    priceSum
  end

  helper_method :totalItemNumber
  helper_method :totalPrice
end
