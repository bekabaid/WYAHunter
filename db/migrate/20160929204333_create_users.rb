class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :my_name
      t.string :email
      t.string :password_digest
      t.integer :privilege
      t.boolean :verified
      t.string :verify_token
      t.timestamps
    end
  end
end
