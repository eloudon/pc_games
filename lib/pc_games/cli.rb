class PcGames::CLI

  def call
    puts "Techradar's Top 3 PC games are:"
    top_three
  end

  def top_three
    puts <<-DOC
    1. The Witcher 3
    2. Dark Souls 3
    3. Monster Hunter World
    DOC
  end


end
