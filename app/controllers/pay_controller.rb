class PayController < ApplicationController
  @@shopItem = Array.new(0)
  @@itemSummary =  Hash.new(0)
  

 
  def shoppingCart
  	num = params[:quantity].to_i
  	for i in 0 .. num - 1
  		@@shopItem.push(params[:type])
  		if(@@itemSummary.has_key?(params[:type]))
  			freq = @@itemSummary[params[:type]] + 1
  			@@itemSummary[params[:type]] = freq
  		else
  			@@itemSummary.store(params[:type], 1)
  		end

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

  def allOrder
  end

 
 
## get the unit price by index, the index is the itemSummary index
  def getUnitPrice(index)
  	coffeeMenu = ShoppingController.menu
  	keys = @@itemSummary.keys
  	coffeeMenu[keys[index]]
  end

 

  def getUniqueItemHashLength
  	@@itemSummary.length
  end

  def getUniqueItemName(index)
  	keys = @@itemSummary.keys
  	keys[index]
  end

  def getUniqueItemNumber(index)
  	keys = @@itemSummary.keys
  	@@itemSummary[keys[index]]
  end

  

  helper_method :getUnitPrice
  helper_method :totalItemNumber
  helper_method :totalPrice
  helper_method :getUniqueItemNumber
  helper_method :getUniqueItemName
  helper_method :getUniqueItemHashLength
end
