class PlayController < ApplicationController
  
  include PlayHelper
  
  def index
    response_game = get_game
    @game = JSON.parse(response_game.body)
    @hand1 = PokerHand.new(@game["winning_hands"]["1"])
    @hand2 = PokerHand.new(@game["winning_hands"]["1"])        
  end
  
  def round1    
  end
  
  def flop    
  end
  
  def turn    
  end
  
  def river    
  end
  
  def confirm    
  end
end

