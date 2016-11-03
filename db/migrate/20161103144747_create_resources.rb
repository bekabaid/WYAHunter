class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :location
      t.integer :privilege
      t.text :description
      t.integer :available
      t.string :type

      t.timestamps
    end
  end
end
