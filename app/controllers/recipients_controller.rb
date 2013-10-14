class RecipientsController < ApplicationController
  before_action :set_recipient, only: [:show, :edit, :update, :destroy]

  # GET /recipients
  # GET /recipients.json
  def index
    @recipients = Recipient.all
    #@recipients = current_user.recipients.paginate(page: params[:page])
    #campaign = Campaign.find.all
    #@campaign = Campaign.find(params[:id])
    #@recipients = @campaign.recipients
  end

  # GET /recipients/1
  # GET /recipients/1.json
  def show
 
  end

  # GET /recipients/new
  def new
    @recipient = Recipient.new
    @user = current_user
    @campaign = Campaign.find(params[:campaign_id])
  end

  # GET /recipients/1/edit
  def edit
  end

  # POST /recipients
  # POST /recipients.json
  def create
    @recipient = Recipient.new(recipient_params)
    @campaign = Campaign.find(params[:campaign_id])
    @recipient.campaign = @campaign
    @recipient.user_id = current_user.id
    @recipient.price = 1.00



    respond_to do |format|
      if @recipient.save
        format.html { redirect_to current_user, notice: "Recipient #{@recipient.first_name} #{@recipient.last_name} created." }
        format.json { render action: 'show', status: :created, location: @recipient }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipients/1
  # PATCH/PUT /recipients/1.json
  def update
    if @recipient.update(recipient_params)
      flash[:success] = "Updated information for giftcard recipient #{@recipient.first_name} #{@recipient.last_name}."
      redirect_to current_user
    end
  end

  # DELETE /recipients/1
  # DELETE /recipients/1.json
  def destroy
    @recipient.destroy
    respond_to do |format|
      format.html { redirect_to recipients_url }
      format.json { head :no_content }
    end
  end

  def who_bought
    @recipient = Recipient.find(params[:id])
    @latest_order = @recipient.orders.order(:updated_at).last 
    if stale?(@latest_order)
      respond_to do |format|
        format.atom
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipient
      @recipient = Recipient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipient_params
      params.require(:recipient).permit(:first_name, :last_name, :title, :price, :user_id, :campaign_id)
    end
end
