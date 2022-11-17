class Track
  def initialize(title, artist) # title and artist are both strings
  @title = title
  @artist = artist
  end

  def title
    @title
  end

  def artist
    @artist
  end

  def track
    track = @title + ", " + @artist
    track
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
    track.include?(keyword)
  end
end
