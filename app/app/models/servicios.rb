class Servicio < ApplicationRecord #ActiveRecord::Base
    has_many :huesped_servicios
    has_many :huespeds, through: :huesped_servicio
end 