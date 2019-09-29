require 'pry'

class MusicLibraryController

  attr_accessor :path, :gets

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call 
    input = ""
    
    while input != "exit" do  
    
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      
      input = gets.chomp
   
      case input 
      when "list songs"
        list_songs 
      when "list artists"
        list_artists
      when "list genres"
        list_genres
      when "list artist"
        list_songs_by_artist
      when "list genre"
        list_songs_by_genre
      when "play song" 
        play_song
      end 
    end 
  end 
    
    
  def list_songs
      song_list = Song.all.sort {|song| song.name <=> song.name bindin.pry}
      
      song_list.each.with_index(1) {|song, i|  binding.pry}
      
      binding.pry
  end 
  
  def list_artists
    if @input = "list artists"
      #list artists
    end
  end 
  
  def list_genres
    
  end
  
  def list_songs_by_artist 
    
  end 
  
  def list_songs_by_genre 
    
  end 
  
  def play_song
    
  end 
  
end