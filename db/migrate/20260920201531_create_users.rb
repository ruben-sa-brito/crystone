class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :email
      t.string :role
      t.string :password_digest
      t.boolean :is_active

      t.timestamps
    end
  end
end
