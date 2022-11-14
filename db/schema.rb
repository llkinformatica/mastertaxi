# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_09_160256) do
  create_table "active_storage_attachments", charset: "utf8mb3", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb3", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb3", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "clientes", charset: "utf8mb3", force: :cascade do |t|
    t.string "nome"
    t.string "cpf_cnpj"
    t.string "sigla", limit: 10
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cooperados", charset: "utf8mb3", force: :cascade do |t|
    t.string "nome"
    t.bigint "matricula"
    t.string "apelido"
    t.date "nascimento"
    t.string "telefone", limit: 20
    t.string "celular", limit: 20
    t.string "logradouro", limit: 60
    t.string "numero", limit: 10
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado", limit: 2
    t.string "cep", limit: 10
    t.string "cpf", limit: 20
    t.string "cnh_registro", limit: 20
    t.string "cnh_categoria", limit: 5
    t.date "cnh_vencimento"
    t.string "tipo_sanguineo", limit: 10
    t.date "data_admissao"
    t.date "data_demissao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localidades", charset: "utf8mb3", force: :cascade do |t|
    t.string "nome"
    t.decimal "latitude", precision: 15, scale: 10
    t.decimal "longitude", precision: 15, scale: 10
    t.boolean "parada", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", charset: "utf8mb3", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "nome"
    t.text "bio"
    t.integer "grupo", limit: 1, default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
