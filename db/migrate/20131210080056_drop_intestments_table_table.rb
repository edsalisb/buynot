class DropIntestmentsTableTable < ActiveRecord::Migration
  def change
    drop_table :investments_tables
  end
end
