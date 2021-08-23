class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new ]
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
    @service = @service.new(list_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end
end
