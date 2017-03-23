json.extract! tenant, :id, :first_name, :last_name, :age, :unit_id, :number_of_household, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
