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

ActiveRecord::Schema.define(version: 20190312031948) do

  create_table "empleados", force: :cascade do |t|
    t.text    "nombres"
    t.text    "apellidos"
    t.integer "cedula"
    t.integer "celular"
  end

  create_table "huespeds", force: :cascade do |t|
    t.integer "cedula"
    t.text    "nombres"
    t.text    "apellidos"
    t.text    "celular"
    t.text    "email"
    t.date    "fecha_nacimiento"
    t.text    "pais_origen"
  end

  create_table "huespeds_servicios", force: :cascade do |t|
    t.integer "huesped_id"
    t.integer "servicio_id"
    t.integer "precio"
    t.text    "especificaciones"
    t.index ["huesped_id"], name: "index_huespeds_servicios_on_huesped_id"
    t.index ["servicio_id"], name: "index_huespeds_servicios_on_servicio_id"
  end

  create_table "servicios", force: :cascade do |t|
    t.string  "nombre"
    t.text    "detalles"
    t.integer "precioBase"
  end

end
