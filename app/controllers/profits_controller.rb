class ProfitsController < ApplicationController
  def index
  end

  def show
    start_date = params[:start_date].to_date
    end_date = params[:end_date].to_date
    if start_date.nil? || end_date.nil?
      flash[:alert] = "Invalid date range. Please provide valid start and end dates."
      redirect_to profits_path
      return
    end

    @sales = Sale.where(created_at: start_date.beginning_of_day..end_date.end_of_day).where.not(total_amount: nil, total_received: nil, credit_amount: nil)
    @total_sales = @sales.sum(:total_amount)
    @total_profit = @sales.sum { |sale| sale.total_received.to_i || 0 - sale.total_amount.to_i || 0 }
    @total_expenses = Expense.where(created_at: start_date.beginning_of_day..end_date.end_of_day).sum(:amount)
    @total_credit_amount = @sales.sum(:credit_amount)
    @total_in_hand_amount = @total_sales - @total_credit_amount
  end

  def profit_sales
    start_date = params[:start_date].to_date
    end_date = params[:end_date].to_date
    if start_date.nil? || end_date.nil?
      flash[:alert] = "Invalid date range. Please provide valid start and end dates."
      redirect_to profits_path
      return
    end
    @sales = Sale.where(created_at: start_date.beginning_of_day..end_date.end_of_day).where.not(total_amount: nil, total_received: nil, credit_amount: nil)
  end

  def profit_sale_items
    @sale = Sale.find(params[:sale_id])
  end

end
