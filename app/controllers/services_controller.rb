class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :show ]
  before_action :set_service, only: [:show]

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
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

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :content, :price)
  end
end
