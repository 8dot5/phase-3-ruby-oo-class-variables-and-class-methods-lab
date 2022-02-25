class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    # instance 

    # the set of instructions that are laid out in initialize do not require the attr_accessor method.

    def initialize(name, artist, genre)
        #self is inside of the instance method. basically, the setter method which is essentially
        # self.name=(name)
        #why?  previously the value stored in the instance var @name couldn't be referenced after its been instantiated. this is a better efficient way. using the attr_accessor :name ==> self.name can call upon the value that's been passed in during the instantiation
        self.name = name #previously, @name
        self.artist = artist #previously, @artist
        self.genre = genre #previously, @genre

        @@count += 1

        @@genres << self.genre
        @@artists << self.artist
    end

    # class methods

    def self.count
        @@count
    end

    def self.genres
        # @@genres.map { |song| song.genre }.uniq

        @@genres.uniq
    end

    def self.artists
        # artistArray = @@artists.map { |song| song.artist }.uniq
                # puts artistArray
        @@artists.uniq
    end

    def self.genre_count
        # @@genres.map { |song| song.genre }.tally
        @@genres.tally
    end

    def self.artist_count
        # @@artists.map { |song| song.artist }.tally
        @@artists.tally
    end
end

# # # # ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# # # # puts ninety_nine_problems.name
# # # # puts ninety_nine_problems.artist
# # # # puts ninety_nine_problems.genre


# class Song

#     @@count = 0
#     @@genres = []
#     @@artists = []

#     attr_accessor :name, :artist, :genre

#     def initialize(args_hash)
#         args_hash.each do |key, value|
#             self.send("#{key}=", value)
#         end

#         # @@all << self
#         @count += 1

#         @@genres << self
#         @@artists << self

#     end

#     def self.count
#         @@count
#     end

#     def self.genres
#         @@genres.uniq
#     end

#     def self.artists
#         @@artists.uniq
#     end

#     def self.genre_count
#         @@genres.tally
#     end

#     def self.artist_count
#         @@artists.tally
#     end

# end