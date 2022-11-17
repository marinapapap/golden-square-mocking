require 'music_library'
require 'track'

RSpec.describe "music integration tests" do

  context "when adding a track to the music library" do
    it "returns the track" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Title", "Artist")
      music_library.add(track_1)
      result = music_library.all
      expect(result).to eq [track_1]
    end
  end

  context "when given a keyword" do
    it "returns list of matches" do
      music_library = MusicLibrary.new
      track_1 = Track.new("Title", "Artist")
      track_2 = Track.new("Match", "New Artist")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search("Match")
      expect(result).to eq [track_2]
    end
  end

end