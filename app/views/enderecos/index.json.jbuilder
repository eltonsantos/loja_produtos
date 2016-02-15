json.array!(@enderecos) do |endereco|
  json.extract! endereco, :id, :cep, :rua, :bairro, :cidade, :estado, :numero, :complemento, :tipo_endereco, :pessoa_id
  json.url endereco_url(endereco, format: :json)
end
