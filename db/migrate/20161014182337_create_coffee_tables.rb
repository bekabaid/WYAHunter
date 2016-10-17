class CreateCoffeeTables < ActiveRecord::Migration[5.0]
  def change
    create_table :coffee_tables do |t|
      t.string :room
      t.boolean :available
      t.text :description
      t.integer :privilege

      t.timestamps
    end
  end
end
