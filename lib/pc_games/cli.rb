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
  puts "Enter the number of the game you would like to read more about or top to see the list again or exit:"
  input = nil
  while input != "exit"
  input = gets.strip

  if input.to_i > 0
    puts @games[input.to_i-1]
  elsif input == "top"
    top_three
else
  puts "Took a wrong turn? Type top or exit."
  end
 end
end

def goodbye
  puts "Don't forget to check in to see when rankings change!"
 end

 end
