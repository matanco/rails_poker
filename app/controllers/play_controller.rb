class PlayController < ApplicationController
  
  include PlayHelper
  
  def index
    response_game = get_game
    @game = JSON.parse(response_game.body)
    @ident = SecureRandom.base64(15).tr('+/=lIO0', 'pqrsxyz')
    Play.commit_game(response_game.body,@ident)     
  end

  def status    
    @status = Play.load_game(params[:id])
    @game = @status.complete_game
    @game = JSON.parse(@game)
    
    respond_to do |format|
      if @status.stage == 'deal_cards'
        @status.stage = 'flop'
        if @status.save!
          format.js { render '/play/render_flop' }
        end
      elsif @status.stage == 'flop'
        @status.stage = 'turn'
        if @status.save!
          format.js { render '/play/render_turn' }
        end
      elsif @status.stage == 'turn'
        @status.stage = 'river'
        if @status.save!
          @hand1 = PokerHand.new(@game["winning_hands"]["1"])
          @hand2 = PokerHand.new(@game["winning_hands"]["2"])
          format.js { render '/play/render_river' }
        end
      end       
    end    
  end    
end

