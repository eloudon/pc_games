class PcGames::Game
attr_accessor :name, :price, :url

  def self.rank
    self.scape_games
  end

 def scape_games
  games = []
  games << self.scape_tech
  games
 end


 def self.scrape_tech
   doc = Nokogiri::HTML(open(https://techradar.com/uk/news/best-pc-games))
binding.pry
 end

end
