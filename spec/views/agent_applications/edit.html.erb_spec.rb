require 'rails_helper'

RSpec.describe "agent_applications/edit", type: :view do
  before(:each) do
    @agent_application = assign(:agent_application, AgentApplication.create!(
      :user => nil,
      :license_number => "MyString"
    ))
  end

  it "renders the edit agent_application form" do
    render

    assert_select "form[action=?][method=?]", agent_application_path(@agent_application), "post" do

      assert_select "input#agent_application_user_id[name=?]", "agent_application[user_id]"

      assert_select "input#agent_application_license_number[name=?]", "agent_application[license_number]"
    end
  end
end
