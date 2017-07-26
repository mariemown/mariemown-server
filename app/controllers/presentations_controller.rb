class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
  end

  def show
    Presentation.find(params[:id])
  end

  def create
    Presentation.create(create_params)
  end

  def create_params
    params.required(:presentation).permit!
  end
end
