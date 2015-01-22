class User < ActiveRecord::Base


  has_many :purchases,
           inverse_of: :user


end
