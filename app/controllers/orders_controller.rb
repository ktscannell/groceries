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
      flash[:success] = 'Thank you for your order! Remember your order number'
      redirect_to @order
    else
      flash.now[:errors] = @order.errors.full_messages
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(
      :first_name,
      :last_name,
      :email,
      :phone_number,
      :service_type,
      :service_date,
      :desired_pick_up_time,
      :payment_method,
      :substitutions,
      :dairy,
      :meat,
      :aisle_one_canned_non_perishables,
      :aisle_two_soups_cereal_ethnic_hot_beverages,
      :aisle_three_baking_personal_paper_products,
      :aisle_four_household_products,
      :aisle_five_snacks_and_pop,
      :produce,
      :freezer,
      :bakery,
      :other_medicine_etc,
      :notes
    )
  end

end
