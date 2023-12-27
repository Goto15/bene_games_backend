class GamesController < ApplicationController
    def index
        @games = Game.all
        render json: @games
    end

    def display_table
        @games = Game.all.map{ |game| game.structure_response}
        render json: @games
    end

    def show
        game = Game.find(params[:id])
        render json: game
    end

    def create
        game = Game.new(game_params)
        if game.save
            render json: game
        else
            render json: {error: "Failed to create game"}
        end
    end

    def update
        game = Game.find(params[:id])
        game.update(game_params)
        render json: game
    end


    def destroy
        game = Game.find(params[:id])
        game.destroy
    end

    private

    def game_params
        params.require(:game).permit(:id, :title, :blind, :criticScore, :completed, :esrbRating, :genres, :hasVotes, :length, :userScore, :votesNeededToPass, :description, :releaseDate, :genres)
    end
end
