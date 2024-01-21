class CreateSaleItems < ActiveRecord::Migration[7.1]
  def change
    create_table :sale_items do |t|
      t.references :sale, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.decimal :per_item_price, precision: 10, scale: 2
      t.decimal :discount, precision: 10, scale: 2
      t.decimal :total_amount, precision: 10, scale: 2

      t.timestamps
    end
  end
end
