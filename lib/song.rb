class Song
    #establish three writable attributes for each song
    attr_accessor :name, :artist, :genre

    #class variable to track the total songs created
    @@count = 0
    
    #class arrays to contain all the artists of existing songs
    @@artists=[]
    @@genres=[]

    def initialize(name,artist,genre)
        #Set instance variables
        @name = name
        @artist=artist
        @genre=genre  
        
        #Update and Increment class variables
        @@artists<<artist
        @@genres<<genre
        @@count += 1
    end

    def self.count
        return @@count
    end

    def self.artists
        return @@artists.uniq!
    end

    def self.genres
        return @@genres.uniq!
    end

    def self.genre_count
        #creates an empty hash to build the historogram
        genre_count = {}

        #cycle through the class array to populate the hash with unique genere keys and increment the hash values for duplicate genre entries from the class array
        @@genres.each do |genre|
            # check if a genre is already in the hash & increase the counter
            
            if genre_count[genre] 
                genre_count[genre]+=1
            else 
                genre_count[genre]=1
            end
        end
        genre_count
    end
    def self.artist_count
        #simlar to the self.genre_count method, this creates an empty hash to build the historogram
        artist_count = {}

        #cycle through the class array to populate the hash with unique genere keys and increment the hash values for duplicate artist entries from the class array
        @@artists.each do |artist|
            # check if a artist is already in the hash & increase the counter
            
            if artist_count[artist] 
                artist_count[artist]+=1
            else 
                artist_count[artist]=1
            end
        end
        artist_count
    end

end
