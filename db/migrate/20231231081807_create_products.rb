class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.integer :quantity
      t.decimal :unit_price
      t.text :description

      t.timestamps
    end
  end
end
