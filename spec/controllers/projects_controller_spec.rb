require 'spec_helper'

describe ProjectsController do
  before do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET index" do
    it "assigns all projects as @projects" do
      Project.any_instance.stub(:repository)
      project = FactoryGirl.create(:project)
      get :index, {}
      assigns(:projects).should eq([project])
    end
  end

  describe "GET show" do
    it "assigns the requested project as @project" do
      Project.any_instance.stub(:repository)
      project = FactoryGirl.create(:project)
      get :show, {:id => project.to_param}
      assigns(:project).should eq(project)
    end
  end
end
