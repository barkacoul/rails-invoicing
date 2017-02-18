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

ActiveRecord::Schema.define(version: 20170218122606) do

  create_table "clients", force: :cascade do |t|
    t.string   "nom",            limit: 150
    t.string   "pays",           limit: 100
    t.string   "ville",          limit: 100
    t.string   "adresse",        limit: 200
    t.string   "adresse_suite",  limit: 100
    t.string   "email",          limit: 150
    t.string   "tel_travail",    limit: 20
    t.string   "tel_domicile",   limit: 20
    t.string   "tel_portable",   limit: 20
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "utilisateur_id", limit: 4
  end

  add_index "clients", ["utilisateur_id"], name: "index_clients_on_utilisateur_id", using: :btree

  create_table "employes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entreprises", force: :cascade do |t|
    t.string   "nom_entreprise", limit: 100
    t.string   "pied_de_page",   limit: 300
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "utilisateur_id", limit: 4
  end

  create_table "facture_produits", force: :cascade do |t|
    t.integer "facture_id",    limit: 4
    t.integer "produit_id",    limit: 4
    t.integer "quantite",      limit: 4
    t.float   "prix_unitaire", limit: 24
    t.float   "sous_total",    limit: 24
  end

  add_index "facture_produits", ["facture_id"], name: "index_facture_produits_on_facture_id", using: :btree
  add_index "facture_produits", ["produit_id"], name: "index_facture_produits_on_produit_id", using: :btree

  create_table "factures", force: :cascade do |t|
    t.float    "montant_ht",     limit: 24,  null: false
    t.float    "montant_ttc",    limit: 24,  null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "client_id",      limit: 4
    t.integer  "tva_valeur",     limit: 4
    t.integer  "utilisateur_id", limit: 4
    t.string   "nom",            limit: 255, null: false
  end

  add_index "factures", ["client_id"], name: "index_factures_on_client_id", using: :btree
  add_index "factures", ["utilisateur_id"], name: "index_factures_on_utilisateur_id", using: :btree

  create_table "fournisseurs", force: :cascade do |t|
    t.string   "nom",            limit: 100
    t.text     "description",    limit: 65535
    t.string   "pays",           limit: 100
    t.string   "ville",          limit: 100
    t.string   "adresse",        limit: 200
    t.string   "adresse_suite",  limit: 100
    t.string   "email",          limit: 150
    t.string   "tel_travail",    limit: 20
    t.string   "tel_domicile",   limit: 20
    t.string   "tel_portable",   limit: 20
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "entreprise",     limit: 255
    t.integer  "utilisateur_id", limit: 4
  end

  add_index "fournisseurs", ["utilisateur_id"], name: "index_fournisseurs_on_utilisateur_id", using: :btree

  create_table "produits", force: :cascade do |t|
    t.string   "nom",                limit: 100
    t.text     "description",        limit: 65535
    t.integer  "quantite",           limit: 4
    t.float    "prix_unitaire",      limit: 24
    t.float    "prix_de_vente",      limit: 24
    t.float    "valeur_de_stock",    limit: 24
    t.float    "marge_beneficiaire", limit: 24
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "utilisateur_id",     limit: 4
    t.integer  "fournisseur_id",     limit: 4
  end

  add_index "produits", ["fournisseur_id"], name: "index_produits_on_fournisseur_id", using: :btree
  add_index "produits", ["utilisateur_id"], name: "index_produits_on_utilisateur_id", using: :btree

  create_table "tvas", force: :cascade do |t|
    t.float    "valeur",     limit: 24, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string   "pseudo",            limit: 20
    t.string   "mdp_encrypté",      limit: 40
    t.string   "email",             limit: 255
    t.boolean  "isAdmin",                       default: false
    t.string   "pnom",              limit: 100
    t.string   "nom",               limit: 50
    t.string   "pays",              limit: 100
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "salt",              limit: 40
    t.string   "logo_file_name",    limit: 255
    t.string   "logo_content_type", limit: 255
    t.integer  "logo_file_size",    limit: 4
    t.datetime "logo_updated_at"
    t.string   "ville",             limit: 255
    t.string   "adresse",           limit: 255
    t.string   "telephone",         limit: 255
  end

end
