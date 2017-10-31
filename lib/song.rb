class Song
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
