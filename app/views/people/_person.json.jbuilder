json.extract! person, :id, :name, :phone, :email, :logo, :created_at, :updated_at
json.url person_url(person, format: :json)
