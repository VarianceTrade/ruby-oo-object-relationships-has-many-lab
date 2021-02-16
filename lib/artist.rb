class Artist
    attr_accessor :name

    @@plus_songs = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.plus_songs
        @@plus_songs
    end

    def songs
        # has many songs
        @songs
    end
    
    def add_song(song)
        # 1) adds the song to self's list of songs
        @songs << song
        @@plus_songs << song
        # 2) sets the song's artist to self
        song.artist = self
    end

    def add_song_by_name(name)
        # create a new instance of song with name
        new_song = Song.new(name)
        # add new song to artist's songs
        @songs << new_song
        # set new song's artist to self
        new_song.artist = self
        # shovel it into the plus_song array?
        @@plus_songs << new_song
    end

    def self.song_count
        # return number of songs in plus songs array
        Song.all.count
        #### I think I misclicked and deleted something here ####
    end
end

# artist_1 = Artist.new("Adele")
# artist_2 = Artist.new("Jay-z")
# artist_1.add_song_by_name("Hello")
# artist_2.add_song_by_name("Dead Presidents")
# song_1 = Song.new("HOVA")
# artist_2.add_song(song_1)

# puts Artist.song_count # => 2


