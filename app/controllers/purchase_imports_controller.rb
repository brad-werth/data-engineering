class PurchaseImportsController < ApplicationController


  helper_method :purchase_import


  def new
    purchase_import.update( params.require(:purchase_import).permit(:data_to_import) ) if request.post?
  end


  private


  def purchase_import
    @_purchase_import ||= PurchaseImport.new
  end


end
