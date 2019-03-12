class Huesped < ApplicationRecord #ActiveRecord::Base
    has_many :huesped_servicios
    has_many :servicios, through: :huesped_servicio
end 