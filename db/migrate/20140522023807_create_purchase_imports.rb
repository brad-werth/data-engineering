class CreatePurchaseImports < ActiveRecord::Migration
  def change
    create_table :purchase_imports do |t|
      t.timestamps
    end
  end
end
