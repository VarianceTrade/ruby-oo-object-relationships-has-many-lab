class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @artist = artist
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
        Artist.plus_songs << self
    end
    
    def artist_name
        if @artist == nil
            return nil
        else
            @artist.name
        end
    end
end
  
# hello.artist = adele
# # 1.
# puts hello.artist # => "Adele"
# # 2.
# puts adele.songs # => [hello]
# adele.add_song(hello)