class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.date :due_date
      t.time :due_time

      t.timestamps
    end
  end
end
