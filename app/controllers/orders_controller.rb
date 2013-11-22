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
    @amount = @cart.total_price.to_int * 100
    @service_fee = (@cart.total_price * 0.031) + 0.30
    @total_transaction_amount = @cart.total_price.to_int + @service_fee
    @organizer_credit = @cart.total_price * 0.05
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)

    # Stripe stuff

    #customer = Stripe::Customer.create(
    #  :email => 'example@stripe.com',
    #  :card  => params[:stripeToken]
    #)

    begin
    rescue Stripe::CardError => e
      @user.errors.add :base, e.message
      @user.stripe_token = nil
      render :action => :new

    rescue Stripe::StripeError => e
      logger.error e.message
      @user.errors.add :base, "There was a problem with your credit card"
      @user.stripe_token = nil
      render :action => :new
    end

  #######
=begin
      charge = Stripe::Charge.create(
        #:customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd',
        :card        => {
          :number => @order.card_number,
          :exp_month => @order.card_expiration.split('/')[0],
          :exp_year  => @order.card_expiration.split('/')[1],
          :cvc       => @order.card_cvv2
        }
      )
    rescue Stripe::CardError => e
      flash[:error] = e.message
      render :action => :new
      return
    end
=end


    #end Stripe stuff
    respond_to do |format|
      #binding.pry
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        OrderNotifier.received(@order).deliver
        format.html { redirect_to campaigns_url, notice: "Thank you for your order. We just emailed you a receipt." }
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
