class Sale < ApplicationRecord
    has_many :sale_items, dependent: :destroy
    accepts_nested_attributes_for :sale_items, reject_if: :all_blank, allow_destroy: true
    validates_numericality_of :total_amount, :total_received, :credit_amount, allow_nil: true
    # Calculate credit amount before saving
    before_save :calculate_credit_amount

    # Calculate credit amount
  def calculate_credit_amount
    self.credit_amount = total_amount - total_received if total_amount && total_received
  end
end
