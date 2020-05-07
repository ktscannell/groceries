class OrdersController < ApplicationController
  def index
    @orders = Order.all.order(created_at: :desc)
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
      redirect_to @order
    else
      flash.now[:errors] = @order.errors.full_messages
      render :new
    end
  end

  private

  def order_params
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
      :frozen_foods,
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
