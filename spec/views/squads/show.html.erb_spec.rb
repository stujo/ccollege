require 'spec_helper'

describe "squads/show" do
  before(:each) do
    @squad = assign(:squad, stub_model(Squad,
      :color => "Color",
      :instructor => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Color/)
    rendered.should match(//)
  end
end
