require 'spec_helper'

describe Checkin do
  describe 'self.active' do
    it 'returns active checkins' do
      checkins = FactoryGirl.create_list(:checkin, 3)
      FactoryGirl.create_list(:checkin, 2, checked_out_at: Time.now)

      expect(Checkin.active.to_a).to eq checkins
    end
  end
end
