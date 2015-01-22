class PurchasedItem < ActiveRecord::Base


  belongs_to :purchase,
             inverse_of: :purchased_items

  belongs_to :item,
             inverse_of: :purchased_items


end
