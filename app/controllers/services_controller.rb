class ServicesController < ApplicationController
    def new
        @service = Service.new
    end
  
    def create
      @service = Service.new(service_params)
      if @service.save
        redirect_to user_path(current_user.id)
      else
        render 'new'
      end
    end

    def show
    end

  private

  def service_params
    params.require(:service).permit(:title, :content)
  end
end