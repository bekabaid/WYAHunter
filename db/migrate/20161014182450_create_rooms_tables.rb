class CreateRoomsTables < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms_tables do |t|
      t.string :room
      t.boolean :available
      t.integer :quantity
      t.text :description
      t.integer :privilege

      t.timestamps
    end
  end
end
