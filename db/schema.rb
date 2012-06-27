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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120626030829) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.string   "cidade"
    t.string   "uf"
    t.string   "endereco"
    t.integer  "numero"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pedido_produtos", :force => true do |t|
    t.integer  "id_pedido"
    t.integer  "id_produto"
    t.integer  "qtd"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pedidos", :force => true do |t|
    t.integer  "id_cliente"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo"
    t.text     "descricao"
    t.decimal  "valor",      :precision => 10, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "tipos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
