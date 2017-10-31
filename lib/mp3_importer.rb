class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = File.join(File.dirname(__FILE__), *%w[rel path here])

end