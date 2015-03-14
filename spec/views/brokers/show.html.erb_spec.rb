require 'rails_helper'

RSpec.describe "brokers/show", type: :view do
  before(:each) do
    @broker = assign(:broker, Broker.create!(
      :name => "Name",
      :broker_email => "Broker Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Broker Email/)
  end
end
