class PcGames::Game
  attr_accessor :name, :price, :url

  def self.rank
    self.scrape_games
  end

  def self.scrape_games
    games = []
   games << self.scrape_pc
  games
  end

  def self.scrape_pc
    doc = Nokogiri::HTML(open("https://uk.pcmag.com/features/77195/the-best-pc-games"))

    binding.pry

    game_1 = self.new
    game_1.name =
    game_1.price =
    game_1.url =


    game
  end
end
