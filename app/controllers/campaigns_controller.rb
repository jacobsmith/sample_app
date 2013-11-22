class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  include CurrentCart
  before_action :set_cart

  # GET /campaigns
  # GET /campaigns.json
  def index
    @campaigns = Campaign.all
    respond_to do |format|
      format.html
      format.csv { render text: @campaigns.to_csv }
    end

  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
    @user = current_user
    @campaign = Campaign.find(params[:id])
    @recipients = @campaign.recipients.all
  end

 def campaign_recipients
    @user = current_user
    @campaign = Campaign.find(params[:id])
    @campaign_recipients = @campaign.recipients.load
    respond_to do |format|
      format.html
      format.csv { send_data @campaign.to_csv }
      #format.csv { render text: @campaign_recipients.to_csv }
    end
  end

 def order_recipient_giftcards
    @user = current_user
    @campaign = Campaign.find(params[:id])
    @campaign_recipients = @campaign.recipients.all
  end

  # GET /campaigns/new
  def new
    @user = current_user
    @campaign = Campaign.new
  end

  # GET /campaigns/1/edit
  def edit
    @user = current_user
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user_id = current_user.id

    respond_to do |format|
      if @campaign.save
        format.html { redirect_to @campaign, notice: 'Campaign was successfully created.' }
        format.json { render action: 'show', status: :created, location: @campaign }
      else
        format.html { render action: 'new' }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaigns/1
  # PATCH/PUT /campaigns/1.json
  def update
    if @campaign.update(campaign_params)
      flash[:success] = "#{@campaign.title} campaign updated."
      redirect_to current_user
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to campaigns_url }
      format.json { head :no_content }
    end
  end

  def import 
    Campaign.import(params[:file])
    redirect_to @campaign, notice: "Successfully uploaded giftcard recipients."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
      params.require(:campaign).permit(:title, :description, :end_date, :user_id, :recipient_id)
    end

    
end
