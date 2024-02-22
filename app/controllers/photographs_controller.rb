class PhotographsController < ApplicationController
  def index
    @photographs = Photograph.all

    render json: @photographs
  end
end
