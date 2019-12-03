class ScreensController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def new
      @screen = Screen.new
    end

	def index
	  @screens = Screen.all	
	end

	def create
	  @screen = current_user.screens.create(screen_params)
	  if @screen.valid?
	    redirect_to root_path
	  else
	    render :new, status: :unprocessable_entity
	  end
	end



  private

  def screen_params
    params.require(:screen).permit(:description, :picture)
  end

end
