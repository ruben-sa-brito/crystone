class CreateCustomers < ActiveRecord::Migration[8.1]
  def change
    create_table :customers do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.boolean :is_active

      t.timestamps
    end
  end
end
