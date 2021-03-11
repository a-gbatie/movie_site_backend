class MoviesController < ApplicationController
    def index
        movies = Movie.all
        render json: movies, include: [:comments]
    end

    def show
        movie = Movie.find(params[:id])
        render json: movie
    end

    def create
        movie = Movie.create(movie_params)
        render json: movie
    end

    private
    def movie_params
        params.require(:movie).permit(:name, :release_date, :image)
    end
end
