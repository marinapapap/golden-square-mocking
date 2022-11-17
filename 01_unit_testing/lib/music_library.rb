class MusicLibrary
  def initialize
    @music_library = []
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing

    @music_library << track
  end

  def all
    # Returns a list of track objects
    @music_library
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword

   @music_library.select do |track|
    track.matches?(keyword)
   end
   
  end
end
