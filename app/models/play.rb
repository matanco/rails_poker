class Play < ActiveRecord::Base
  
  ## Accessor
  attr_accessible :complete_game, :stage, :table_ident, :pot
  
  ## Build game in the Database
  def self.commit_game(game,ident)
    Play.create!(:complete_game => game,:table_ident => ident,:stage => 'deal_cards',:pot => 0)
  end
  
  ## Load game for Ajax call
  def self.load_game(game_ident)
    where('table_ident = ?',game_ident).first
  end
  
  ## Update the current pot in the database
  def self.increase_game_pot(game_ident,bet)
    game = where('table_ident = ?',game_ident).first
    game.pot = game.pot.to_i + bet.to_i
    game.save!
  end
end
