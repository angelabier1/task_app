require 'rails_helper'

RSpec.describe "agent_applications/show", type: :view do
  before(:each) do
    @agent_application = assign(:agent_application, AgentApplication.create!(
      :user => nil,
      :license_number => "License Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/License Number/)
  end
end
