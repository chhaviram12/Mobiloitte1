json.extract! product, :id, :name, :image, :description, :dat, :created_at, :updated_at
json.url product_url(product, format: :json)
