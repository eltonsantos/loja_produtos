# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160219011823) do

  create_table "carrinhos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string   "cep"
    t.string   "rua"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.integer  "numero"
    t.string   "complemento"
    t.string   "tipo_endereco"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "enderecavel_id"
    t.string   "enderecavel_type"
  end

  add_index "enderecos", ["enderecavel_type", "enderecavel_id"], name: "index_enderecos_on_enderecavel_type_and_enderecavel_id"

  create_table "itens_carrinho", force: :cascade do |t|
    t.integer  "carrinho_id"
    t.integer  "produto_id"
    t.integer  "quantidade",  default: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "itens_carrinho", ["carrinho_id"], name: "index_itens_carrinho_on_carrinho_id"
  add_index "itens_carrinho", ["produto_id"], name: "index_itens_carrinho_on_produto_id"

  create_table "itens_pedidos", force: :cascade do |t|
    t.integer  "produto_id"
    t.integer  "pedido_id"
    t.integer  "quantidade"
    t.integer  "preco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "itens_pedidos", ["pedido_id"], name: "index_itens_pedidos_on_pedido_id"
  add_index "itens_pedidos", ["produto_id"], name: "index_itens_pedidos_on_produto_id"

  create_table "pedidos", force: :cascade do |t|
    t.integer  "pessoa_id"
    t.integer  "total",      default: 0
    t.string   "token"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pedidos", ["pessoa_id"], name: "index_pedidos_on_pessoa_id"

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "data_nascimento"
    t.string   "sexo"
    t.integer  "usuario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "pessoas", ["usuario_id"], name: "index_pessoas_on_usuario_id"

  create_table "produtos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "qtd_estoque"
    t.integer  "preco"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "papel",                  default: 0
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
