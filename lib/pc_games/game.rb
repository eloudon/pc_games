class PcGames::Game
attr_accessor :name, :price, :url

  def self.all

    game_1 = self.new
    game_1.name = "Witcher"
    game_1.price = "$20.50"
    game_1.url = "amazon"

    game_2 = self.new
    game_2.name = "Dark Souls"
    game_2.price = "$21.50"
    game_2.url = "amazons"

    game_3 = self.new
    game_3.name = "Monster Hunter"
    game_3.price = "$22.50"
    game_3.url = "amazonz"

    [game_1, game_2, game_3]
  end

end
