class CreateHuespedsServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :huespeds do |t|
    end
 
    create_table :servicios do |t|
    end
        
    create_table :huespeds_servicios, id: false do |t|
      t.integer :cedula_huesped
      t.integer :servicio_id
    end
 
    add_index :huespeds_servicios, :cedula_huesped
    add_index :huespeds_servicios, :servicio_id
    
  end
end
