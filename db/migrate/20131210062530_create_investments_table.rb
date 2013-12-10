class CreateInvestmentsTable < ActiveRecord::Migration
  def change
    create_table :investments do |t|
    t.text :itemName
    t.integer :purchaseAmount
 
    t.timestamps
    end
  end
end
