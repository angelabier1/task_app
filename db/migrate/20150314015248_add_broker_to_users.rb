class AddBrokerToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :broker, index: true
  end
end
