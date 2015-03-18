class EditTableName < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user
      t.integer :age
      t.string :email
      
      t.timestamp
    end
  end
end
