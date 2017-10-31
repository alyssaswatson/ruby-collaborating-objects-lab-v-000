class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").collect {|filename|
      filename.gsub("#{path}/", "")}
   end
  end

  def import

  end

end
