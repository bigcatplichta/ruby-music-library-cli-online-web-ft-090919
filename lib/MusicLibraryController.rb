class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call 
    input = gets.chomp 
    
    "Welcome to your music library!"
    "To list all of your songs, enter 'list songs'."
    "To list all of the artists in your library, enter 'list artists'."
    "To list all of the genres in your library, enter 'list genres'."
    "To list all of the songs by a particular artist, enter 'list artist'."
    
    
    case
    when 
      
      
  end 

end