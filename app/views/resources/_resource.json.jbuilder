json.extract! resource, :id, :location, :privilege, :description, :available, :type, :created_at, :updated_at
json.url resource_url(resource, format: :json)