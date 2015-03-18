class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :user
  end
end
