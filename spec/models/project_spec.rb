require 'spec_helper'

describe Project do
  describe 'with_active_users' do
    before do
      stub_request(:get, /.*api.github.com.*/).
        to_return(:status => 200, :body => "{}", :headers => {})
      @user = FactoryGirl.create(:user)
      @project1 = FactoryGirl.create(:project)
      @checkin = FactoryGirl.create(:checkin, user: @user, project: @project1)

      @project2 = FactoryGirl.create(:project)
    end

    context 'when it has active users' do
      it 'should return the projects with the users' do
        projects_with_active_users = Project.with_active_users.to_a
        expect(projects_with_active_users).to eq [@project1]
        expect(projects_with_active_users.first.checkins).to eq [@checkin]
        expect(projects_with_active_users.first.users).to eq [@user]
      end
    end
  end
end
