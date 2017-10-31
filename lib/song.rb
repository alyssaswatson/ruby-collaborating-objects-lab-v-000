class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    self.artist = Artist.find_orcreate_by(name)
    artists.add_song(self)
  end
end
