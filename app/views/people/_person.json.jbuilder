json.extract! person, :id, :nome, :matricula, :telefone, :perfil, :created_at, :updated_at
json.url person_url(person, format: :json)
