class GenresController < ApplicationController

    def index
        genres = Genre.all
        render json: genres.sort_by(&:genre).pluck(:genre)
    end

    def create
        genre = Genre.new(genre_params)
        if genre.save
            render json: genre
        else
            render json: {error: "Failed to create genre"}
        end
    end

    private

    def genre_params
        params.require(:genre).permit(:genre, :multiplier)
    end
end
