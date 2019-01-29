class Artist
  attr_accessor :name 
  attr_reader :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = [] #allows artist to have many songs 
  end
  
  def add_song(song)
    @songs.push(song)
    song.artist = self
  end
  
  def save 
    @@all << self
    self
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
  def self.find_or_create_by_name(searched_name)
    self.all.find{|artist| artist.name == searched_name} || self.new(searched_name).save
  end
  
  def self.all
    @@all
  end
  


end