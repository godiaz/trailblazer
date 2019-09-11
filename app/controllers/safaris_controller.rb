class SafarisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_safari, only: [:show, :edit, :update, :destroy]

  def index
    @safaris = Safari.all
  end

  def show
    # @attraction = Attraction.find(params[:id])
    # @hotel = Hotel.find(params[:id])
    @safari_hotels = SafariHotel.where(safari: params[:id])
    @safari_attractions = SafariAttraction.where(safari: params[:id])
  end

  def new
    @safari = Safari.new
  end

  def create
    @safari = Safari.new(safari_params)
    @safari.user = current_user
    if @safari.save
      redirect_to safari_path(@safari)
    else
      render :new
    end
  end

  def edit
    @hotel = Hotel.new
  end

  def update
    if @safari.update(safari_params)
      redirect_to safari_path(@safari)
    else
      flash[:error] = 'Didn\'t save'
    end
  end

  def destroy
    @safari.destroy
    redirect_to safaris_path
  end

  private

  def set_safari
    @safari = Safari.find(params[:id])
    # @safari_hotel = SafariHotel.find(params[:id])
  end

  def safari_params
    safariParams = params.require(:safari).permit(:banner_image, :title, :description, :itinerary_description, :price, :hotels_description, :includes_description)
  end
end
