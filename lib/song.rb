require "pry"

class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    attr_accessor :name, :artist, :genre
    
    def initialize (name, artist, genre)
        #binding.pry
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << self.artist
        @@genres << self.genre
        @@genre_count[self.genre] = @@genres.count(self.genre)
        @@artist_count[self.artist] = @@artists.count(self.artist)
        # binding.pry
    end

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
        @@genre_count
    end

    def self.artist_count 
        @@artist_count
    end
   
end


all_night = Song.new("All Night", "BTS & Juice WRLD", "Hip Hop")
octopus_garden = Song.new("Octopus's Garden", "The Beatles", "Indie/Folk")
welcome_to_the_jungle = Song.new("Welcome To The Jungle", "JAY-Z and Kanye West", "Hip Hop")
#  binding.pry