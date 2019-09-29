class MusicLibraryController

  attr_accessor :path

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call 
    "Welcome to your music library!"
    
    input = gets.chomp 
    
    while input != exit do 
      
  end 

end