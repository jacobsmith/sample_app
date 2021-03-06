class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    if @cart.line_items.empty?
      redirect_to store_url, notice: "Your cart is empty"
      return
    end
    @order = Order.new
    # All in cents!
    @amount = (@cart.total_price * 100).to_i
    @service_fee = (@amount * 0.031 + 30).to_i
    @total_transaction_amount = @amount + @service_fee
    @organizer_credit = (@amount * 0.05).to_i
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    @order.stripe_id = params[:stripe_id]
    # All in cents!
    @amount = (@cart.total_price * 100).to_i
    @service_fee = (@amount * 0.031 + 30).to_i
    @order.total_transaction_amount = @amount + @service_fee
    @order.organizer_credit = (@amount * 0.05).to_i
    begin
      charge = Stripe::Charge.create(
        :amount => @order.total_transaction_amount, # amount in cents, again
        :currency => "usd",
        :card => @order.stripe_id,
        :description => @order.email
      )
    rescue Stripe::CardError => e
      @order.errors.add(:base, e.message)
      render action: :new
      return
    end

    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        OrderNotifier.received(@order).deliver
        format.html { redirect_to root_url, notice: "Thank you for your order. We just emailed you a receipt." }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :email, :card_number, :card_expiration, :card_cvv2, :name_on_card, :stripe_id)
    end
end
