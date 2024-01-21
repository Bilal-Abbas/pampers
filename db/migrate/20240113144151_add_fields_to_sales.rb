class AddFieldsToSales < ActiveRecord::Migration[7.1]
  def change
    add_column :sales, :total_amount, :decimal
    add_column :sales, :total_received, :decimal
    add_column :sales, :credit_amount, :decimal
  end
end
