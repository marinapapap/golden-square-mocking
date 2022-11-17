require 'secret_diary'
require 'diary'

RSpec.describe "integration tests" do

  context "the diary is unlocked"
    it "returns the contents of the diary" do
      diary = Diary.new("these contents are not a secret")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      result = secret_diary.read
      expect(result).to eq "these contents are not a secret"
    end

  context "the diary is relocked" do
    it "raises error message" do
      diary = Diary.new("these contents are a secret")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

end
