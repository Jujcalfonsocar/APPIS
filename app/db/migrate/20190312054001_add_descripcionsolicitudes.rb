class AddDescripcionsolicitudes < ActiveRecord::Migration[5.0]
   def change
    
        add_column :solicitudes, :precio, :int8
        add_column :solicitudes, :especificaciones, :text
  
  end
end
