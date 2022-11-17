require 'track'

RSpec.describe Track do

  context "constructs" do
    it "title and artist" do
      track = Track.new("Title", "Artist")
      expect(track.title).to eq "Title"
      expect(track.artist).to eq "Artist"
    end

    it "track" do
      track = Track.new("Title", "Artist")
      expect(track.track).to eq "Title, Artist"
    end
  end

  context "if track includes keyword" do
    it "returns true" do
      track = Track.new("Title", "Artist")
      result = track.matches?("tle")
      expect(result).to eq true
    end
  end

  context "if track doesn't include keyword" do
    it "returns false" do
      track = Track.new("Title", "Artist")
      result = track.matches?("totle")
      expect(result).to eq false
    end
  end

end