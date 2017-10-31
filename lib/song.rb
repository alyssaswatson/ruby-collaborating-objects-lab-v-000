class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist = artist
    new_song    
  end

  def artist=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
