class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  include CurrentCart
  before_action :set_cart

  # GET /campaigns
  # GET /campaigns.json
  def index
    @campaigns = Campaign.all

  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
    #@user = current_user
    @campaign = Campaign.find(params[:id])
    @recipients = Recipient.paginate(page: params[:page])
    #@recipients = Recipient.find_by(recipient.user_id)
    #find recipients when recipient_id = 
    #recipient.user.id 
    
  end

  # GET /campaigns/new
  def new
    @campaign = Campaign.new
  end

  # GET /campaigns/1/edit
  def edit
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
