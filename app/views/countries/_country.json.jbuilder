json.extract! country, :id, :code, :name, :gdp, :created_at, :updated_at
json.url country_url(country, format: :json)
