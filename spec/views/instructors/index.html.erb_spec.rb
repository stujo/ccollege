require 'spec_helper'

describe "instructors/index" do
  before(:each) do
    assign(:instructors, [
      stub_model(Instructor,
        :name => "Name",
        :github_username => "Github Username"
      ),
      stub_model(Instructor,
        :name => "Name",
        :github_username => "Github Username"
      )
    ])
  end

  it "renders a list of instructors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Github Username".to_s, :count => 2
  end
end
