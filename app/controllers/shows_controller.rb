class ShowsController < ApplicationController

    def index
      render json: Show.all
    end

    def create
      Show.create(show_params)
      render json: Show.all
    end

    def update
      @show = Show.find(params[:id])
      @show.update(show_params)
      render json: Show.all
    end

    private

    def show_params
      params.permit(:title, :description, :rating, :duration, :keywords, :original_air_date)
    end

end
