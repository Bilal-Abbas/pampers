class Sale < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    has_many :sale_items, dependent: :destroy
    accepts_nested_attributes_for :sale_items, reject_if: :all_blank, allow_destroy: true
    validates_numericality_of :total_amount, :total_received, :credit_amount, allow_nil: true
    # Calculate credit amount before saving
    before_save :calculate_credit_amount
    after_save :create_credit_record

    # Calculate credit amount
  def calculate_credit_amount
    self.credit_amount = total_amount - total_received if total_amount && total_received
  end

  def create_credit_record
    return unless credit_amount.to_f > 0

    credit = Credit.find_or_create_by(sale_id: id) do |c|
      c.customer_name = customer_name
      c.total_amount = total_amount
      c.total_received = total_received
      c.credit_amount = credit_amount
    end
  end
end
