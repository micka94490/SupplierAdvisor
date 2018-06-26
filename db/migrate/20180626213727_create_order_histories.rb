class CreateOrderHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :order_histories do |t|
      t.datetime :date
      t.string :unique_id
      t.string :client_company_name
      t.string :buyer_name
      t.string :label
      t.string :purchase_family_1
      t.string :purchase_family_2
      t.decimal :amount
      t.string :type_contract_string
      t.belongs_to :supplier, foreign_key: true

      t.timestamps
    end
  end
end
