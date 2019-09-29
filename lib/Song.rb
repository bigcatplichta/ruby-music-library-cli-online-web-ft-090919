class Song 
  attr_accessor :name, :artist, :genre 
  @@all = []
  
  def initialize(name, artist= nil, genre= nil)
    @name= name
    self.artist = artist 
    @genre = genre 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
  def destroy_all
    @@all.clear 
  end 
  
  def self.create(name, artist= nil, genre= nil) 
    song = Song.new(name, artist, genre)
    
    song.save
    song
  end 
  
  def artist=(artist)
    @artist.add_song(self) or @artist = Artist.new(artist_name) 
    #@artist = Artist.new(artist) 
  end 
  
  # def genre=(genre_name)
  #   self.genre= genre_name
  #   self.genre.save
  # end 
  
  def self.destroy_all
    @@all.clear
  end 
  
end 