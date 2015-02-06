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
    @products = Product.new(product_params)
    if @products.save
      flash[:success] = 'Product successfully created.'
      redirect_to products_path(@products)
    else
      render :new
    end


    end





    private

  def product_params
    params.require(:prod_name).permit(:description, :price)
  end



end
