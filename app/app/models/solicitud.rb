class Solicitud < ApplicationRecord
    belongs_to :huesped, primary_key: 'cedula'
    belongs_to :servicio
end