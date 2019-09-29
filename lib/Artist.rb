require 'pry'

class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
  def self.create(name) 
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
    #binding.pry
  end 
  
  def add_song(song)
    if !song.artist
      song.artist = self 
      self.songs << song
    end 
  end 
  
  def songs 
    @songs 
  end 
end 