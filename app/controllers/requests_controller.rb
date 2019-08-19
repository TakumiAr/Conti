class RequestsController < ApplicationController
  
  def index
  end
  
  def new
    if params[:back]
      @request = Request.new(request_params)
    else
      @request = Recuest.new
    end
  end

  def show
  end
end
