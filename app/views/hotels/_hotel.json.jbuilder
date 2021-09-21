json.extract! hotel, :id, :name, :mobile, :email, :address, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
