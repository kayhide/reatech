require 'spec_helper'

describe "checkins/index" do
  before(:each) do
    assign(:checkins, [
      stub_model(Checkin,
        :user => nil,
        :location => nil,
        :checked_out_at => "Checked Out At",
        :message => "MyText"
      ),
      stub_model(Checkin,
        :user => nil,
        :location => nil,
        :checked_out_at => "Checked Out At",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of checkins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Checked Out At".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
