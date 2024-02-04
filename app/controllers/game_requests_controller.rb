class GameRequestsController < ApplicationController
  include IgdbAccessToken
  before_action :set_game_request, only: %i[ show update destroy ]

  # GET /game_requests
  def index
    @game_requests = GameRequest.all

    render json: @game_requests
  end

  # GET /game_requests/1
  def show
    render json: @game_request
  end

  # POST /game_requests
  def create
    @game_request = GameRequest.new(game_request_params)

    igdb_access_token()

    if @game_request.save
      render json: @game_request, status: :created, location: @game_request
    else
      render json: @game_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_requests/1
  def update
    if @game_request.update(game_request_params)
      render json: @game_request
    else
      render json: @game_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_requests/1
  def destroy
    @game_request.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_request
      @game_request = GameRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_request_params
      params.require(:game_request).permit(:requested_game, :requester, :reward_type)
    end
end
