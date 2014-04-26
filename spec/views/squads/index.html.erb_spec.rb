require 'spec_helper'

describe "squads/index" do
  before(:each) do
    assign(:squads, [
      stub_model(Squad,
        :color => "Color",
        :instructor => nil
      ),
      stub_model(Squad,
        :color => "Color",
        :instructor => nil
      )
    ])
  end

  it "renders a list of squads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
