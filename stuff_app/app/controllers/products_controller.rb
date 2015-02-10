require 'byebug'
class ProductsController < ApplicationController
  before_action :set_products, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
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
      redirect_to "/products"

      else
        format.html { render :new }
        format.json { render json: @products.errors, status: :unprocessable_entity }

      end

      #binding.byebug
  end

  def update
    respond_to do |format|
      if @products.update(product_params)
        format.html { redirect_to products_url, notice: 'products was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  def edit
    @products = Product.find(params[:id])

  end

  def destroy
    @products.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'products was successfully destroyed.' }
  end
  end



  private

  def product_params
    params.require(:product).permit(:prod_name, :description, :price)
  end
  def set_products
      @products = Product.find(params[:id])
    end


end
