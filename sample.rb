require"pry"

class Song 

  @@count = 0
  @@genres = []
  @@artist =[]

  attr_accessor :name, :artist, :genre
  def initialize(name,artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << self
    @@artist << self
  end


  def self.count 
    count = @@count
    puts count
  end

  def self.artists
    artists = @@artist.map {|singer|singer.artist }.uniq
    puts artists
  end

  def self.genres
    genres = @@genres.map {|song|puts song.genre }.uniq
    puts genres
  end

  def self.genres_count
   countGen= @@genres.map {|song|song.genre}.tally
    puts countGen
  end

  def self.artist_count
   countArt= @@artist.map {|singer|singer.artist}.tally
   puts countArt
  end

end