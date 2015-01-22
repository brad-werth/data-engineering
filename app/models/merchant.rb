class Merchant < ActiveRecord::Base


  has_many :purchases,
           inverse_of: :merchant

  belongs_to :address,
             inverse_of: :merchants


end
