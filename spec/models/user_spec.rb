require 'spec_helper'

describe User do
  describe 'active_checkin' do
    before do
      @user = User.create(email: 'user@hogehoge.com', password: 'piyopiyo')
    end

    it 'returns active checkin' do
      checkin = FactoryGirl.create(:checkin, user: @user)
      expect(@user.active_checkin).to eq checkin
    end
  end
end
