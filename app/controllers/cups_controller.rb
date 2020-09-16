class CupsController < ApplicationController
  def index; end

  def show
    @cup = cup_from_cup_param
  end

  private

  def cup_from_cup_param
    params.permit(:cup)[:cup].gsub('dot', '.')
  end
end
