class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :list ]
  def list
  
  end

  def show
  
  end

  def create
  
  end
end
