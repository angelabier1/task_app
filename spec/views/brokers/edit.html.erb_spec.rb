require 'rails_helper'

RSpec.describe "brokers/edit", type: :view do
  before(:each) do
    @broker = assign(:broker, Broker.create!(
      :name => "MyString",
      :broker_email => "MyString"
    ))
  end

  it "renders the edit broker form" do
    render

    assert_select "form[action=?][method=?]", broker_path(@broker), "post" do

      assert_select "input#broker_name[name=?]", "broker[name]"

      assert_select "input#broker_broker_email[name=?]", "broker[broker_email]"
    end
  end
end
