json.extract! rooms_table, :id, :room, :available, :quantity, :description, :privilege, :created_at, :updated_at
json.url rooms_table_url(rooms_table, format: :json)