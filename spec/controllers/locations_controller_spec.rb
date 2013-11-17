require 'spec_helper'

describe LocationsController do
  before do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET index" do
    it "assigns locations with active as @locations" do
      checkins = FactoryGirl.create_list(:checkin, 3, :with_location, user: @user)
      locations = checkins.map(&:location)
      get :index, {}
      expect(assigns(:locations)).to eq locations
    end
  end
end
