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

ActiveRecord::Schema.define(version: 20161002210637) do

  create_table "books", force: :cascade do |t|
    t.text     "isbn"
    t.text     "title"
    t.text     "author"
    t.text     "publisher"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author"], name: "index_books_on_author"
    t.index ["isbn"], name: "index_books_on_isbn"
    t.index ["publisher"], name: "index_books_on_publisher"
    t.index ["title"], name: "index_books_on_title"
    t.index ["year"], name: "index_books_on_year"
  end

  create_table "item_products", force: :cascade do |t|
    t.integer  "item_id",      null: false
    t.string   "product_type"
    t.integer  "product_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["item_id"], name: "index_item_products_on_item_id"
    t.index ["product_type", "product_id"], name: "index_item_products_on_product_type_and_product_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "placeable_type"
    t.integer  "placeable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["placeable_type", "placeable_id"], name: "index_items_on_placeable_type_and_placeable_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_locations_on_name"
  end

  create_table "movies", force: :cascade do |t|
    t.text     "title",      null: false
    t.text     "director"
    t.text     "writer"
    t.integer  "year"
    t.text     "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["director"], name: "index_movies_on_director"
    t.index ["length"], name: "index_movies_on_length"
    t.index ["title"], name: "index_movies_on_title"
    t.index ["writer"], name: "index_movies_on_writer"
    t.index ["year"], name: "index_movies_on_year"
  end

end
