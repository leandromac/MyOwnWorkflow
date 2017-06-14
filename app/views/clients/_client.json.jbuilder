json.extract! client, :id, :name, :email, :phone, :website, :address, :fiscal_number, :created_at, :updated_at
json.url client_url(client, format: :json)
