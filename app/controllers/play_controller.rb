class PlayController < ApplicationController
  
  include PlayHelper
  
  def index
    response_game = get_game
    @game = JSON.parse(response_game.body)        
  end
end

