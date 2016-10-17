json.extract! laptops_table, :id, :room, :available, :quantity, :description, :privilege, :created_at, :updated_at
json.url laptops_table_url(laptops_table, format: :json)