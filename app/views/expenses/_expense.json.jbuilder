json.extract! expense, :id, :name, :detail, :amount, :created_at, :updated_at
json.url expense_url(expense, format: :json)
