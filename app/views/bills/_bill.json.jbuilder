json.extract! bill, :id, :apartment_number, :rent, :electricity_bill, :water_bill, :due_date, :status, :created_at, :updated_at
json.url bill_url(bill, format: :json)
