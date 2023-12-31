json.extract! product, :id, :code, :name, :quantity, :unit_price, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
