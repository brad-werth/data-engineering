Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: redirect('purchase-imports/new')

  match 'purchase-imports/new' => 'purchase_imports#new', as: :new_purchase_import, via: [:get, :post]

end
