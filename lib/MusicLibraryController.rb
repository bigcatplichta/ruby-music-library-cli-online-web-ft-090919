class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call 
    input = gets.chomp 
    
    "Welcome to your music library!"
    "To list all of your songs, enter 'list songs'."
    
    case
    when 
      
      
  end 

end