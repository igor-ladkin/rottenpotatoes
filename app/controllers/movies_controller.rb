class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:title, :rating, :description, :release_date)
    end
end
