require 'spec_helper'

describe "checkins/edit" do
  before(:each) do
    @checkin = assign(:checkin, stub_model(Checkin,
      :user => nil,
      :location => nil,
      :checked_out_at => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit checkin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checkin_path(@checkin), "post" do
      assert_select "input#checkin_user[name=?]", "checkin[user]"
      assert_select "input#checkin_location[name=?]", "checkin[location]"
      assert_select "input#checkin_checked_out_at[name=?]", "checkin[checked_out_at]"
      assert_select "textarea#checkin_message[name=?]", "checkin[message]"
    end
  end
end
