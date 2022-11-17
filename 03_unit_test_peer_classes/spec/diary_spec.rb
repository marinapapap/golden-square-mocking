require 'diary'

RSpec.describe Diary do

  context "constructs" do
    it "diary" do
      diary = Diary.new("this is some contents")
      expect(diary.read).to eq "this is some contents"
    end
  end

end