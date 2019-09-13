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
  puts "Select a game you would like to hear more about by entering it's number:"
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
  end
 end
end

def goodbye
  puts "Don't forget to check in to see when rankings change!"
 end

 end
