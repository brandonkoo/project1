class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customers = Customer.new
  end

  def show
    @customers = Customer.find(params[:id])
  end

  def create

    @product = Customer.new(customer_params) #(params[:prod_name, :description, :price])
    if @customer.save
      redirect_to "/customers"

      else
        format.html { render :new }
        format.json { render json: @customers.errors, status: :unprocessable_entity }

      end

      #binding.byebug
  end

  def update
    respond_to do |format|
      if @customers.update(customer_params)
        format.html { redirect_to customers_url, notice: 'customers was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  def edit
    @customers = Customer.find(params[:id])

  end

  def destroy
    @customers.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'customers was successfully destroyed.' }
  end
  end



  private

  def customer_params
    params.require(:customers).permit(:name, :address, :city, :zipcode, :state, :phone)
  end
  def set_customers
      @customers = Customer.find(params[:id])
    end


end


