class Purchase < ActiveRecord::Base


  belongs_to :user,
             inverse_of: :purchases

  belongs_to :merchant,
             inverse_of: :purchases

  has_one :purchase_import_purchase,
          inverse_of: :purchase

  has_many :purchase_imports,
           inverse_of: :purchases

  has_many :purchased_items,
           inverse_of: :purchase

  has_many :items,
           through: :purchased_items,
           inverse_of: :purchases


  def total_price
    items.to_a.sum(&:price)
  end


end
