class SaleItem < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :sale
  belongs_to :product
  end