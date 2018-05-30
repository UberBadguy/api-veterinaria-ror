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

ActiveRecord::Schema.define(version: 20180529171742) do

  create_table "medicaments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_medicaments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "pets_id"
    t.bigint "medicaments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicaments_id"], name: "index_pet_medicaments_on_medicaments_id"
    t.index ["pets_id"], name: "index_pet_medicaments_on_pets_id"
  end

  create_table "pet_sicknesses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "pets_id"
    t.bigint "sickness_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pets_id"], name: "index_pet_sicknesses_on_pets_id"
    t.index ["sickness_id"], name: "index_pet_sicknesses_on_sickness_id"
  end

  create_table "pet_vaccines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "pets_id"
    t.bigint "vaccines_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pets_id"], name: "index_pet_vaccines_on_pets_id"
    t.index ["vaccines_id"], name: "index_pet_vaccines_on_vaccines_id"
  end

  create_table "pets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "users_id"
    t.integer "age"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_pets_on_users_id"
  end

  create_table "sicknesses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username"
    t.string "password"
    t.string "f_name"
    t.string "l_name"
    t.bigint "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_users_on_type_id"
  end

  create_table "vaccines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pet_medicaments", "medicaments", column: "medicaments_id"
  add_foreign_key "pet_medicaments", "pets", column: "pets_id"
  add_foreign_key "pet_sicknesses", "pets", column: "pets_id"
  add_foreign_key "pet_sicknesses", "sicknesses"
  add_foreign_key "pet_vaccines", "pets", column: "pets_id"
  add_foreign_key "pet_vaccines", "vaccines", column: "vaccines_id"
  add_foreign_key "pets", "users", column: "users_id"
  add_foreign_key "users", "types"
end
