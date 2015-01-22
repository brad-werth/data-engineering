class AddForeignKeyIndexes < ActiveRecord::Migration
  def change
    add_index :merchants, :address_id
    add_index :purchases, :merchant_id
    add_index :purchased_items, :purchase_id
    add_index :purchased_items, :item_id
    add_index :purchase_import_purchases, :purchase_id
    add_index :purchase_import_purchases, :purchase_import_id
  end
end
