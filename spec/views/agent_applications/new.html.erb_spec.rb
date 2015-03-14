require 'rails_helper'

RSpec.describe "agent_applications/new", type: :view do
  before(:each) do
    assign(:agent_application, AgentApplication.new(
      :user => nil,
      :license_number => "MyString"
    ))
  end

  it "renders new agent_application form" do
    render

    assert_select "form[action=?][method=?]", agent_applications_path, "post" do

      assert_select "input#agent_application_user_id[name=?]", "agent_application[user_id]"

      assert_select "input#agent_application_license_number[name=?]", "agent_application[license_number]"
    end
  end
end
