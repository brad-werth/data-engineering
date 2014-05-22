class CreatePurchasedItems < ActiveRecord::Migration
  def change
    create_table :purchased_items do |t|
      t.belongs_to :purchase
      t.belongs_to :item
      t.timestamps
    end
  end
end
