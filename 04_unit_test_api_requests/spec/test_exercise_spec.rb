require 'test_exercise'

RSpec.describe TimeError do

    it "calls API to get server time" do
      fake_requester = double :requester
      allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"185.171.200.121","datetime":"2022-11-18T10:38:37.420193+00:00","day_of_week":5,"day_of_year":322,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1668767917,"utc_datetime":"2022-11-18T10:38:37.420193+00:00","utc_offset":"+00:00","week_number":46}')
      time = Time.new(2022, 11, 18, 10, 38, 37)
      time_error = TimeError.new(fake_requester)
      expect(time_error.error(time)).to eq 0.420193
    end

end