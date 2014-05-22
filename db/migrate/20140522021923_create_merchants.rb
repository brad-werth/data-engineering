class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.belongs_to :address
      t.timestamps
    end
  end
end
