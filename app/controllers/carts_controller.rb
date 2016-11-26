class CartsController < ApplicationController
  layout :false
  def add
    @product = Product.find(params[:id])
    @quantity = params[:quantity]
    @cart.add(@product, @product.price, @quantity)

  end

  def show
  end
end
