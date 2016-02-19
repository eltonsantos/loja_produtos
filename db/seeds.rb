# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Usuario.create id: 1, email: "elton@r2a.net.br", password: "12345678", papel: 1
Usuario.create id: 2, email: "lucivania@r2a.net.br", password: "12345678", papel: 0
Usuario.create id: 3, email: "caio@r2a.net.br", password: "12345678", papel: 0

Pessoa.create id: 1, nome: "Elton", cpf: "02849112321", telefone: "85986817703", sexo: "Masculino", usuario_id: 1
Pessoa.create id: 2, nome: "Lucivania", cpf: "26360691353", telefone: "85988887713", sexo: "Feminino", usuario_id: 2
Pessoa.create id: 3, nome: "Caio", cpf: "09842356955", telefone: "85988887713", sexo: "Masculino", usuario_id: 3

p1 = Pessoa.find(1)
p2 = Pessoa.find(2)

Endereco.create id: 1, cep: "60410072", rua: "Queiroz Ribeiro", bairro: "Montese", cidade: "Fortaleza", estado: "CE", numero: 840, tipo_endereco: "Entrega", enderecavel: p1
Endereco.create id: 2, cep: "60416530", rua: "Desembargador Praxedes", bairro: "Montese", cidade: "Fortaleza", estado: "CE", numero: 1029, tipo_endereco: "Cobrança", enderecavel: p1
Endereco.create id: 3, cep: "60420040", rua: "Helvécio Monte", bairro: "Vila União", cidade: "Fortaleza", estado: "CE", numero: 717, tipo_endereco: "Entrega", enderecavel: p2
Endereco.create id: 4, cep: "60345070", rua: "Barão de Aracati", bairro: "Aldeota", cidade: "Fortaleza", estado: "CE", numero: 717, tipo_endereco: "Cobrança", enderecavel: p2

Produto.create id: 1, nome: "Iphone 6s", qtd_estoque: 4, preco: 3500
Produto.create id: 2, nome: "Asus Zenfone 2", qtd_estoque: 6, preco: 1500
Produto.create id: 3, nome: "Chromebook", qtd_estoque: 2, preco: 900
Produto.create id: 4, nome: "Macbook", qtd_estoque: 3, preco: 4900