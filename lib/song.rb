class Song 
  @@count = 0 
  @@genres = []
  @@artists = []
  def initialize(name,artist,genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << genre 
    @@artists << artist
  end
  attr_accessor :name , :artist , :genre 
  def self.count 
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  def self.artists
    @@artists.uniq
  end
  def self.genre_count 
    empty_hash = {}
    @@value = 0 
    @@genres.uniq.each do |name| 
      
        empty_hash[name] = @@value
    
  
    end
    @@genres.each do |name| 
      if @@genres.uniq.include?(name)
        @@value += 1 
      end
     end
     empty_hash

  
end
end