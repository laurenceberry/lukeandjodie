class RsvpsController < ApplicationController
  def index
    @rsvp = Rsvp.all
  end
  def show
    @rsvp = Rsvp.find(params[:id])
  end
  def new
    @rsvp = Rsvp.new
  end
  def edit
    @rsvp = Rsvp.find(params[:id])
  end
  def create
    @rsvp = Rsvp.new(rsvp_params)

    if @rsvp.save
      redirect_to @rsvp
    else
      render 'new'
    end

  end
private
  def rsvp_params
    params.require(:rsvp).permit(:name, :additional_info, :contact, :attending)
  end
end
