class Solicitud < ApplicationRecord
    belongs_to :huesped
    belongs_to :servicio
end