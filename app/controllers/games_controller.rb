class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.save
  end

  def show
    @game = Game.find_by(game_params[:slug])
  end

  private

  def game_params
    params.require(:game).permit(:slug)
  end
end
