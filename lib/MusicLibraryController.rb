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
    
      song_list = Song.all.sort_by {|song| song.name}
      song_list.each.with_index(1) {|song, i| puts "#{i}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
  
  end 
  
  def list_artists
    
      artist_list = Artist.all.sort_by {|artist| artist.name}
      artist_list.each.with_index(1) {|artist, i| puts "#{i}. #{artist.name}"}
    
  end 
  
      
  def list_genres
    genre_list = Genre.all.sort_by {|genre| genre.name}
    genre_list.each.with_index(1) {|genre, i| puts "#{i}. #{genre.name}"}
  end
  
  # expect($stdout).to receive(:puts).with("1. country")
  #     expect($stdout).to receive(:puts).with("2. dance")
  #     expect($stdout).to receive(:puts).with("3. hip-hop")
  #     expect($stdout).to receive(:puts).with("4. indie")
  
  def list_songs_by_artist 
    puts "Please enter the name of an artist:"
    input = gets.chomp 
    
    artist = find_by_name(input)
    binding.pry
  end 
  
  # it "prompts the user to enter an artist" do
  #     allow(music_library_controller).to receive(:gets).and_return("Testing for #puts")

  #     expect($stdout).to receive(:puts).with("Please enter the name of an artist:")
  
  def list_songs_by_genre 
    
  end 
  
  def play_song
    
  end 
  
end