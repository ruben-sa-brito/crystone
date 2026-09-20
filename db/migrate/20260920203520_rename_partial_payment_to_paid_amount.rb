class RenamePartialPaymentToPaidAmount < ActiveRecord::Migration[8.1]
  def change
    rename_column :orders, :partial_payment, :paid_amount
  end
end
