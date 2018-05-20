class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path
  end

  def files
    path = MP3Importer.new('./db/mp3s').import
    Dir.new(self.path)

  end

  def import
    self.files.each do |filename|
     Song.new_by_filename(filename)
   end
  end
end
