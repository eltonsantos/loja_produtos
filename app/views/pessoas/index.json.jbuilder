json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :cpf, :telefone, :data_nascimento, :sexo, :usuario_id
  json.url pessoa_url(pessoa, format: :json)
end
