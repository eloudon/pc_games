class PcGames::CLI

  def call
    puts "Techradar's Top 3 PC games are:"
    top_three
    describe
    goodbye
  end

  def top_three
    puts <<-DOC
    1. The Witcher 3
    2. Dark Souls 3
    3. Monster Hunter World
    DOC
  end

def describe
  puts "Enter the number of the game you would like to read more about or top to see the list again or exit:"
  input = nil
  while input != "exit"
  input = gets.strip
  case input
when "1"
  puts "describe the witcher"
when "2"
  puts "describe dark souls"
when "3"
  puts "describe MHW"
when "top"
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
