class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.string :customer_name
      t.string :contact
      t.string :customer_address
      t.string :supplier_name
      t.string :order_booker_name
      t.string :payment_method, default: "cash"

      t.timestamps
    end
  end
end
