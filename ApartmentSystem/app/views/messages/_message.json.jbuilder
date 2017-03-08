json.extract! message, :id, :message, :recipient, :sender, :created_at, :updated_at
json.url message_url(message, format: :json)
