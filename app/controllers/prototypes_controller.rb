class PrototypesController < ApplicationController

  def index
    @prototypes = prototype.all
  end
  
end
