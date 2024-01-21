json.extract! sale, :id, :customer_name, :contact, :customer_address, :supplier_name, :order_booker_name, :payment_method, :created_at, :updated_at
json.url sale_url(sale, format: :json)
