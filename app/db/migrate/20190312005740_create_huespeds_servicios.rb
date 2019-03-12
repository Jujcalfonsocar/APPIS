class CreateHuespedsServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :huespeds do |t|
    end
 
    create_table :servicios do |t|
    end
        
    create_table :huespeds_servicios do |t|
      t.belongs_to :huesped, index: true
      t.belongs_to :servicio, index: true  
    end
  end
end