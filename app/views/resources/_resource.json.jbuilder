json.extract! resource, :id, :title, :path, :created_at, :updated_at
json.url resource_url(resource, format: :json)