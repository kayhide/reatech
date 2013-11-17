require 'spec_helper'

describe "checkins/show" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :user => nil,
      :location => nil,
      :checked_out_at => "Checked Out At",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Checked Out At/)
    rendered.should match(/MyText/)
  end
end
