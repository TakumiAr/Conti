class RequestsController < ApplicationController
  
  def index
  end
  
  def new
      @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to user_path(current_user.id)
    else
      render 'new'
    end
  end

  def show
  end

  private

  def request_params
    params.require(:request).permit(:title, :content)
  end
end
