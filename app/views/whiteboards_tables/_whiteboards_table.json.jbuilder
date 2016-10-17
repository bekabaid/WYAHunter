json.extract! whiteboards_table, :id, :room, :available, :quantity, :description, :privilege, :created_at, :updated_at
json.url whiteboards_table_url(whiteboards_table, format: :json)