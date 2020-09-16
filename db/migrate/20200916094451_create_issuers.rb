class CreateIssuers < ActiveRecord::Migration[6.0]
  def change
    create_table :issuers do |t|
      t.string :name
      t.string :address_one
      t.string :address_two
      t.string :phone_number
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
