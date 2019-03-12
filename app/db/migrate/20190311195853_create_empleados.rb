class CreateEmpleados < ActiveRecord::Migration[5.0]
  def change
    create_table :empleados do |t|
        t.text :nombres
        t.text :apellidos
        t.integer :cedula
        t.integer :celular
    end      
  end
end