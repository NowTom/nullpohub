require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :user => nil,
      :name => "MyString",
      :max_user_count => 1,
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_user[name=?]", "event[user]"
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_max_user_count[name=?]", "event[max_user_count]"
    end
  end
end
