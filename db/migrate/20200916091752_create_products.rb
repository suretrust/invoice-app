class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :serial_number
      t.decimal :price, precision: 10, scale: 2, default: '0.0'
      t.integer :quantity, default: 0
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
