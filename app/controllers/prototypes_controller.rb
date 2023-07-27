class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end
  
  def new
    if user_signed_in?
    @prototype = Prototype.new
    render :new
    else
      redirect_to user_session_path
    end
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to '/'
    else
      render :new
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :image, :concept, :catch_copy).merge(user: current_user.id)
  end
end
