json.extract! announcement, :id, :subject, :content, :date_posted, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
