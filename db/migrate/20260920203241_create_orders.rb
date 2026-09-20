class CreateOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.string :custom_customer_name
      t.text :description
      t.decimal :value
      t.decimal :partial_payment
      t.string :status
      t.date :delivery_date

      t.timestamps
    end
  end
end
