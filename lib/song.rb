class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.map do |genre|
      [genre, @@genres.count(genre)]
    end.to_h
  end

  def self.artist_count
    @@artists.map { |artist| [artist, @@artists.count(artist)]}.to_h
  end

end
