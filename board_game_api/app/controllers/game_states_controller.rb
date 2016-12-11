class GameStatesController < ApplicationController
  before_action :set_game_state, only: [:show, :update, :destroy]

  # GET /game_states
  def index
    @game_states = GameState.all

    render json: @game_states
  end

  # GET /game_states/1
  def show
    render json: @game_state
  end

  # POST /game_states
  def create
    @game_state = GameState.new(game_state_params)

    if @game_state.save
      render json: @game_state, status: :created, location: @game_state
    else
      render json: @game_state.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_states/1
  def update
    if @game_state.update(game_state_params)
      render json: @game_state
    else
      render json: @game_state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_states/1
  def destroy
    @game_state.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_state
      @game_state = GameState.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_state_params
      params.require(:game_state).permit(:state)
    end
end
