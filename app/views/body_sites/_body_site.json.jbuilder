json.extract! body_site, :id, :identifier, :name, :region, :created_at, :updated_at
json.url body_site_url(body_site, format: :json)
