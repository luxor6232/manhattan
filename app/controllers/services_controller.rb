class ServicesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [ :index, :new, :show ]
  before_action :set_service, only: [:show, :destroy]

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end


  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :content, :price)
  end
end
