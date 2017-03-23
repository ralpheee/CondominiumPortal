json.extract! message, :id, :sender, :recipient, :message, :date, :created_at, :updated_at
json.url message_url(message, format: :json)
