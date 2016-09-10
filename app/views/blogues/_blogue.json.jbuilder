json.extract! blogue, :id, :titre, :contenu, :created_at, :updated_at
json.url blogue_url(blogue, format: :json)