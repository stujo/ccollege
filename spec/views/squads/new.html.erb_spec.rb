require 'spec_helper'

describe "squads/new" do
  before(:each) do
    assign(:squad, stub_model(Squad,
      :color => "MyString",
      :instructor => nil
    ).as_new_record)
  end

  it "renders new squad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", squads_path, "post" do
      assert_select "input#squad_color[name=?]", "squad[color]"
      assert_select "input#squad_instructor[name=?]", "squad[instructor]"
    end
  end
end
