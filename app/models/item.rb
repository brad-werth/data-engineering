class Item < ActiveRecord::Base


  has_many :purchased_items,
           inverse_of: :item

  has_many :purchases,
           through: :purchased_items,
           inverse_of: :items


end
