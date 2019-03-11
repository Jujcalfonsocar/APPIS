class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
        t.text :nombres
        t.text :apellidos
        t.integer :cedula
        t.integer :celular
        t.timestamps
    end
    create_table :roles do |t|
        t.belongs_to :empleado, index: { unique: true }, foreign_key: true
        t.text :descripcion
        t.integer :sueldo
        t.timestamps
    end       
  end
end