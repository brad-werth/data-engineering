class Address < ActiveRecord::Base


  has_many :merchants,
           inverse_of: :address


end
