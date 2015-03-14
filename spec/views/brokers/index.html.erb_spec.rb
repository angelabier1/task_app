require 'rails_helper'

RSpec.describe "brokers/index", type: :view do
  before(:each) do
    assign(:brokers, [
      Broker.create!(
        :name => "Name",
        :broker_email => "Broker Email"
      ),
      Broker.create!(
        :name => "Name",
        :broker_email => "Broker Email"
      )
    ])
  end

  it "renders a list of brokers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Broker Email".to_s, :count => 2
  end
end
