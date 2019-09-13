class PcGames::CLI

  def call
    tournaments
    info
    goodbye
  end

  def tournaments
    puts "Upcoming Premier Starcraft 2 tournaments:"
    @tournaments = PcGames::Game.upcoming
    @tournaments.each.with_index(1) do |tournament, i|
      puts "#{i}, #{tournament.name}"
    end
  end

def info
  puts "Select a tournament for more info or type list to see all tournaments or exit:"
  input = nil
  while input != "exit"
  input = gets.strip

  if input.to_i > 0
    the_tournament = @tournaments[input.to_i-1]
    puts "#{the_tournament.name} - Location:#{the_tournament.location} - Start date: #{the_tournament.date} - Prize pool: #{the_tournament.prize_pool}"
  elsif input == "list"
    tournaments
else
  puts "Take a wrong turn? Type list or exit."
  end
 end
end

def goodbye
  puts "Don't forget to check back to see upcoming tournaments!"
 end

 end
