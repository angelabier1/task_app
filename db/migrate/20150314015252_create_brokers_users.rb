class CreateBrokersUsers < ActiveRecord::Migration
  def change
    create_table :brokers_users do |t|
      t.belongs_to :broker, index: true
      t.belongs_to :user, index: true
    end
  end
end
