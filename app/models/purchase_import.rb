class PurchaseImport < ActiveRecord::Base


  attr_accessor :data_to_import


  before_save :import_data


  has_many :purchase_import_purchases
  has_many :purchases, through: :purchase_import_purchases


  def total_price
    purchases.to_a.sum(&:total_price)
  end


  private


  def import_data
    require 'csv'

    CSV.parse(data_to_import.read, headers: true, col_sep: "\t") do |row|
      user = User.find_or_create_by(name: row[0])
      item = Item.find_or_create_by(description: row[1].strip, price: row[2])
      items = row[3].to_i.times.collect { item }
      address = Address.find_or_create_by(street: row[4].strip)
      merchant = Merchant.find_or_create_by(name: row[5].strip, address: address)

      self.purchases << Purchase.create!(user: user,
                                         merchant: merchant,
                                         items: items)
    end
  end


end
