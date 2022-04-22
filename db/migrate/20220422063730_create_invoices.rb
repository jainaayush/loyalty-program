class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|

      t.integer  :amount
      t.datetime :invoice_date
      t.references :user, index: true, foreign_key: true
      t.boolean :foreign_country_investment
      t.timestamps
    end
  end
end
