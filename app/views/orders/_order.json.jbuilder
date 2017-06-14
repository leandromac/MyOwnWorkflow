json.extract! order, :id, :client_id, :payment, :deadline, :skill_id, :member_id, :description, :price, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
