json.array!(@holas) do |hola|
  json.extract! hola, :id, :texto
  json.url hola_url(hola, format: :json)
end
