class Play < ActiveRecord::Base
  
  ## Accessor
  attr_accessible :complete_game, :stage, :table_ident
  
  def self.commit_game(game,ident)
    Play.create!(:complete_game => game,:table_ident => ident,:stage => 'deal_cards')
  end
  
  def self.load_game(game_ident)
    where('table_ident = ?',game_ident).first
  end
  
end
