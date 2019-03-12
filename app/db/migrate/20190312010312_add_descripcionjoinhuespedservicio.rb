class AddDescripcionjoinhuespedservicio < ActiveRecord::Migration[5.0]
  def change
    
    add_column :huespeds_servicios, :precio, :int8
    add_column :huespeds_servicios, :especificaciones, :text
  
  end
end
