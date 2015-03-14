require 'rails_helper'

RSpec.describe "agent_applications/index", type: :view do
  before(:each) do
    assign(:agent_applications, [
      AgentApplication.create!(
        :user => nil,
        :license_number => "License Number"
      ),
      AgentApplication.create!(
        :user => nil,
        :license_number => "License Number"
      )
    ])
  end

  it "renders a list of agent_applications" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "License Number".to_s, :count => 2
  end
end
