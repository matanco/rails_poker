module PlayHelper  
  ## Get the game from external API
  def get_game
    url = "https://poker.p.mashape.com/index.php?players=2%3Cplayers%3E"    
    HTTParty.post(
      url.to_s, 
      :headers => { "X-Mashape-Authorization:" => "BD2oiv6y0SGhREIhB6uqfnwMdg9YgG14",'ContentType' => 'application/json' }
    )
  end
end
