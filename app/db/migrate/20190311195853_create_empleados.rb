class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
        t.text :nombres
        t.text :apellidos
        t.int8 :cedula
        t.int8 :celular
        t.timestamps
    end
    create_table :roles do |t|
        t.belongs_to :supplier, index: { unique: true }, foreign_key: true
        t.text :descripcion
        t.int8 :sueldo
        t.timestamps
    end       
  end
end