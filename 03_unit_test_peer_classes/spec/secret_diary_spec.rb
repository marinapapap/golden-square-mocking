require 'secret_diary'

RSpec.describe SecretDiary do

  context "the diary is unlocked" do
    it "returns diary contents" do
      fake_diary = double(:fake_diary, read: "these contents are not a secret")
      secret_diary = SecretDiary.new(fake_diary)
      secret_diary.unlock
      result = secret_diary.read
      expect(result).to eq "these contents are not a secret"
    end
  end

  context "the diary is relocked" do
    it "raises error message" do
      fake_diary = double :diary
      secret_diary = SecretDiary.new(fake_diary)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

end