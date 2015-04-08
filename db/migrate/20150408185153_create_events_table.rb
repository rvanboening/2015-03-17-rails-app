class CreateEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.integer :user_id
      
      t.timestamp
    end
  end
end
