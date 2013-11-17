require 'spec_helper'

describe Checkin do
  describe 'self.active' do
    it 'returns active checkins' do
      checkins = FactoryGirl.create_list(:checkin, 3)
      FactoryGirl.create_list(:checkin, 2, checked_out_at: Time.now)

      expect(Checkin.active.to_a).to eq checkins
    end
  end

  describe 'location_position' do
    it 'sets location' do
      checkin = Checkin.new
      checkin.location_position = '(1.234, 56.789)'
      expect(checkin.location.latitude).to eq 1.234
      expect(checkin.location.longitude).to eq 56.789
    end
  end
end
