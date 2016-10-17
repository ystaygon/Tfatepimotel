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

ActiveRecord::Schema.define(version: 20161015145256) do

  create_table "atendentes", force: :cascade do |t|
    t.string   "Ate_Nome"
    t.date     "Ate_Dtadmissao"
    t.string   "Ate_Nrrg"
    t.string   "Ate_Nrcpf"
    t.date     "Ate_Dtnascimento"
    t.decimal  "Ate_Vlsalario"
    t.date     "Ate_Dtpagamento"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "carros", force: :cascade do |t|
    t.string   "Car_Nurplaca"
    t.string   "Car_Endereco"
    t.string   "Cad_Cpf"
    t.date     "Car_Dtentrada"
    t.time     "Car_Hrentrada"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contratos", force: :cascade do |t|
    t.integer  "Con_Id"
    t.date     "Con_Dtvenda"
    t.decimal  "Con_Vendatotal"
    t.decimal  "Con_Desconto"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "cliente_id"
    t.integer  "atendente_id"
  end

  add_index "contratos", ["atendente_id"], name: "index_contratos_on_atendente_id"
  add_index "contratos", ["cliente_id"], name: "index_contratos_on_cliente_id"

  create_table "contratos_produtos", id: false, force: :cascade do |t|
    t.integer "contrato_id", null: false
    t.integer "produto_id",  null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "Pro_Id"
    t.string   "Pro_Noproduto"
    t.string   "Pro_Nrquantidade"
    t.string   "Pro_Vlcompra"
    t.string   "Pro_Vlvenda"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "quartos", force: :cascade do |t|
    t.string   "Qua_Nome"
    t.string   "Qua_Tipo"
    t.string   "Qua_Nometipo"
    t.decimal  "Qua_Vlpreco"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
