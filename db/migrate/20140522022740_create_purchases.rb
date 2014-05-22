class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.belongs_to :user
      t.belongs_to :merchant
      t.timestamps
    end
  end
end
