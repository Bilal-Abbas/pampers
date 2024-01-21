class CreateCredits < ActiveRecord::Migration[7.1]
  def change
    create_table :credits do |t|
      t.integer :sale_id
      t.string :customer_name
      t.decimal :total_amount
      t.decimal :total_received
      t.decimal :credit_amount

      t.timestamps
    end
  end
end
