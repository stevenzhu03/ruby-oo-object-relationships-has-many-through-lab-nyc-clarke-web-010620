class Genre

    @@all = []
    attr_reader :name, :song
    
    def initialize(name)
        @name = name
        @song = song
    
        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end
    
    def artists
        self.songs.map do |song|
            song.artist 
        end
    end







end