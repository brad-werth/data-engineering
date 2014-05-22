class CreatePurchaseImportPurchases < ActiveRecord::Migration
  def change
    create_table :purchase_import_purchases do |t|
      t.belongs_to :purchase
      t.belongs_to :purchase_import
      t.timestamps
    end
  end
end
