class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir.glob("./db/mp3s").each do |file|
      file_array = files.split(" - ")
      @files << file_array[1]
    end
    @files
  end

end
