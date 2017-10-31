class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").each do |file|
      file_array = files.split(" - ")
      @files << file_array[1]
    end
  end

end
