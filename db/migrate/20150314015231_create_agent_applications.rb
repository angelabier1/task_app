class CreateAgentApplications < ActiveRecord::Migration
  def change
    create_table :agent_applications do |t|
      t.references :user, index: true
      t.string :license_number
      t.date :license_expiration

      t.timestamps
    end
  end
end
