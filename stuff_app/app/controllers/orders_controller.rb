class OrdersController < ApplicationController
  before_action :set_orders, only: [:show, :edit, :update, :destroy]
  before_action :set_customers, only: [:show, :edit, :update, :destroy]
  before_action :set_products, only: [:show, :edit, :update, :destroy]



  def index
    @orders = Order.all
    @customers = Customer.all
    @products = Product.all
  end
  def new
    @orders = Order.new
  end

  def show
    @orders = Order.find(params[:id])
    @customers = Customer.find(params[:id])
    @products = Product.find(params[:id])
  end

  def create


    @order = Order.new(order_params) #(params[:prod_name, :description, :price])
    if @order.save(order_params)
       format.html { redirect_to orders_url, notice: 'orders was successfully created.' }
       #redirect_to "/orders"

      else
        format.html { render :new }
        format.json { render json: @orders.errors, status: :unprocessable_entity }

      end

      #binding.byebug
  end

  def update
    respond_to do |format|
      if @orders.update(order_params)
        format.html { redirect_to orders_url, notice: 'orders was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  def edit
    @orders = Order.find(params[:id])

  end

  def destroy
    @orders.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'orders was successfully destroyed.' }
  end
  end



  private

  def order_params
    params.require(:order).permit(:customers_id, :products_id, :comment)
  end
  def set_orders
      @orders = Order.find(params[:id])
    end
    def customer_params
    params.require(:customer).permit(:name, :address, :city, :state, :zipcode, :phone)
  end
  def set_customers
      @customers = Customer.find(params[:id])
    end
    def product_params
    params.require(:product).permit(:prod_name, :description, :price)
  end
  def set_products
      @products = Product.find(params[:id])
    end


end


