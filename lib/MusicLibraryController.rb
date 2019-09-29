class MusicLibraryController

  attr_accessor :path, :gets

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call 
    input = gets.chomp 
    
    #"Welcome to your music library!"
    # "To list all of your songs, enter 'list songs'."
    # "To list all of the artists in your library, enter 'list artists'."
    # "To list all of the genres in your library, enter 'list genres'."
    # "To list all of the songs by a particular artist, enter 'list artist'."
    # "To list all of the songs of a particular genre, enter 'list genre'."
    # "To play a song, enter 'play song'."
    # "To quit, type 'exit'."
    # "What would you like to do?"
    
    
    while input != "exit" do 
    "Welcome to your music library!"
    "To list all of your songs, enter 'list songs'."
    "To list all of the artists in your library, enter 'list artists'."
    "To list all of the genres in your library, enter 'list genres'."
    "To list all of the songs by a particular artist, enter 'list artist'."
    "To list all of the songs of a particular genre, enter 'list genre'."
    "To play a song, enter 'play song'."
    "To quit, type 'exit'."
    "What would you like to do?"
    end 
      
  end 

end