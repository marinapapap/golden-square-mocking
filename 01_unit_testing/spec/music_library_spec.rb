require 'music_library'

RSpec.describe MusicLibrary do

  context "when tracks are added" do
    it "returns tracklist" do
      music_library = MusicLibrary.new
      fake_track_1 = double :fake_track
      fake_track_2 = double :fake_track
      music_library.add(fake_track_1)
      music_library.add(fake_track_2)
      result = music_library.all
      expect(result).to eq [fake_track_1, fake_track_2]
    end
  end

  context "when searching for matches based on a keyword" do
    it "returns lists of tracks with keyword present" do
      music_library = MusicLibrary.new
      fake_track_1 = double :fake_track
      expect(fake_track_1).to receive(:matches?).with("Match").and_return(false)
      fake_track_2 = double :fake_track
      expect(fake_track_2).to receive(:matches?).with("Match").and_return(true)
      music_library.add(fake_track_1)
      music_library.add(fake_track_2)
      result = music_library.search("Match")
      expect(result).to eq [fake_track_2]
    end
  end

end