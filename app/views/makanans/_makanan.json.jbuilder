json.extract! makanan, :id, :name, :halal, :price, :image, :created_at, :updated_at
json.url makanan_url(makanan, format: :json)
json.image url_for(makanan.image)
