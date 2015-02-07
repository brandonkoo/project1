require 'byebug'
class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def show
    @products = Product.find(params[:id])
  end

  def create

    @product = Product.new(product_params) #(params[:prod_name, :description, :price])
    if @product.save

      #binding.byebug
      redirect_to "/products"
    else
      render :new
    end
  end


  def product_params
    params.require(:product).permit(:prod_name, :description, :price)
  end



end
