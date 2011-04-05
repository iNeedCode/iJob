require 'spec_helper'

describe "sectors/new.html.erb" do
  before(:each) do
    assign(:sector, stub_model(Sector,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new sector form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sectors_path, :method => "post" do
      assert_select "input#sector_name", :name => "sector[name]"
      assert_select "textarea#sector_description", :name => "sector[description]"
    end
  end
end
