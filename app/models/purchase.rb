class Purchase < ActiveRecord::Base


  belongs_to :user

  belongs_to :merchant

  has_many :purchase_imports

  has_many :purchased_items
  has_many :items, through: :purchased_items


  def total_price
    items.to_a.sum(&:price)
  end


end
