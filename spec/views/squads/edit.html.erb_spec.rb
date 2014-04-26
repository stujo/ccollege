require 'spec_helper'

describe "squads/edit" do
  before(:each) do
    @squad = assign(:squad, stub_model(Squad,
      :color => "MyString",
      :instructor => nil
    ))
  end

  it "renders the edit squad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", squad_path(@squad), "post" do
      assert_select "input#squad_color[name=?]", "squad[color]"
      assert_select "input#squad_instructor[name=?]", "squad[instructor]"
    end
  end
end
