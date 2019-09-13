class PcGames::CLI

  def call
    puts "Techradar's Top 3 PC games are:"
    top_three
    describe
    goodbye
  end

  def top_three
    @games = PcGames::Game.all
    @games.each.with_index(1) do |game, i|
      puts "#{i}, #{game.name} - #{game.price}"
    end
  end

def describe
  puts "Enter the number of the game you're are interested in purchasing or type top or exit:"
  input = nil
  while input != "exit"
  input = gets.strip

  if input.to_i > 0
    the_game = @games[input.to_i-1]
    puts "#{the_game.name} - #{the_game.price} - #{the_game.url}"
  elsif input == "top"
    top_three
else
  puts "Not sure? Type top or exit."
  end
 end
end

def goodbye
  puts "Don't forget to check back when rankings change!"
 end

 end
