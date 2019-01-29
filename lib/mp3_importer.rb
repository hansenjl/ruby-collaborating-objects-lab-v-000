class MP3Importer
  attr_reader :path
  
  def initialize(kitten)
    @path = kitten
  end
  
  def files
    Dir["#{@path}/*.mp3"].map do |filepath|
      filepath.split("/").last 
    end
  end
  
  def import 
    files.each do |some_filename|
      Song.new_by_filename(some_filename)
    end
  end
  

end