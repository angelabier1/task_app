require 'rails_helper'

RSpec.describe "brokers/new", type: :view do
  before(:each) do
    assign(:broker, Broker.new(
      :name => "MyString",
      :broker_email => "MyString"
    ))
  end

  it "renders new broker form" do
    render

    assert_select "form[action=?][method=?]", brokers_path, "post" do

      assert_select "input#broker_name[name=?]", "broker[name]"

      assert_select "input#broker_broker_email[name=?]", "broker[broker_email]"
    end
  end
end
