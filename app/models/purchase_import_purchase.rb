class PurchaseImportPurchase < ActiveRecord::Base


  belongs_to :purchase_import,
             inverse_of: :purchase_import_purchases

  belongs_to :purchase,
             inverse_of: :purchase_import_purchase


end
