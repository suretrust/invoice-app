class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :currency
      t.date :date
      t.decimal :tax, precision: 10, scale: 2, default: '0.0'
      t.decimal :sub_total, precision: 10, scale: 2, default: '0.0'
      t.decimal :total, precision: 10, scale: 2, default: '0.0'

      t.timestamps
    end
  end
end
