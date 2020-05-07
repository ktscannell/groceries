class OrdersController < ApplicationController
  def index
    @orders = Order.all.sort
    render :index
  end
  
  def show
    @order = Order.find(params[:id])
    render :show
  end

  def new
    @order = Order.new
    render :new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = "Order Created"
      render :show
    else
      flash.now[:errors] = @order.errors.full_messages
      render :new
    end
  end

  private

  def sub_params
    params.require(:order).permit(
      :name,
      :phone,
      :email,
      :pickup,
      :substitutions,
      :beverages,
      :bakery,
      :canned_goods,
      :dairy,
      :dry_goods,
      :frozen,
      :meat,
      :produce,
      :cleaning,
      :paper_goods,
      :personal_care,
      :other,
      :notes
    )
  end

end
