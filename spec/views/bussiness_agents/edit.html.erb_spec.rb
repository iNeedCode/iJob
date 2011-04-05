require 'spec_helper'

describe "bussiness_agents/edit.html.erb" do
  before(:each) do
    @bussiness_agent = assign(:bussiness_agent, stub_model(BussinessAgent,
      :company => "MyString",
      :sector => "MyString",
      :noe => 1,
      :street => "MyString",
      :zipcode => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit bussiness_agent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bussiness_agent_path(@bussiness_agent), :method => "post" do
      assert_select "input#bussiness_agent_company", :name => "bussiness_agent[company]"
      assert_select "input#bussiness_agent_sector", :name => "bussiness_agent[sector]"
      assert_select "input#bussiness_agent_noe", :name => "bussiness_agent[noe]"
      assert_select "input#bussiness_agent_street", :name => "bussiness_agent[street]"
      assert_select "input#bussiness_agent_zipcode", :name => "bussiness_agent[zipcode]"
      assert_select "input#bussiness_agent_city", :name => "bussiness_agent[city]"
    end
  end
end
