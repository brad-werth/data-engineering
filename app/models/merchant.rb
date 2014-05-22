class Merchant < ActiveRecord::Base


  has_many :purchases

  belongs_to :address


end
