class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
    render json: @presentations
  end

  def show
    @presentation = Presentation.find(params[:id])
    render json: @presentation
  end

  def create
    Presentation.create(create_params)
  end

  def create_params
    params.required(:presentation).permit!
  end
end
