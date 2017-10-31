class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all? 
  end
  
  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

end
