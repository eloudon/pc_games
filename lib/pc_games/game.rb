class PcGames::Game
  attr_accessor :name, :date, :prize_pool, :location

  def self.upcoming
    self.scrape_tournaments
  end

  def self.scrape_tournaments
    tournaments = []
   tournaments << self.scrape_gsl
   tournaments << self.scrape_wcs
  tournaments
  end

  def self.scrape_gsl
    doc = Nokogiri::HTML(open("https://liquipedia.net/starcraft2/2019_AfreecaTV_GSL_Super_Tournament_2"))

    tournament = self.new
    tournament.name = doc.search("h1").text.strip
    tournament.location = doc.search("div.infobox-cell-2")[11].text.strip
    tournament.date = doc.search("div.infobox-cell-2")[17].text
    tournament.prize_pool = doc.search("div.infobox-cell-2")[15].text

    tournament
  end

  def self.scrape_wcs
    doc = Nokogiri::HTML(open("https://liquipedia.net/starcraft2/2019_WCS_Global_Finals"))

    #binding.pry

    tournament = self.new
    tournament.name = doc.search("h1").text.strip
    tournament.location = doc.search("div.infobox-cell-2")[11].text.strip
    tournament.date = doc.search("div.infobox-cell-2")[17].text
    tournament.prize_pool = doc.search("div.infobox-cell-2")[15].text

    tournament
  end

end
