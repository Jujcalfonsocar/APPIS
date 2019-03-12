class Huesped < ApplicationRecord #ActiveRecord::Base
    has_many :solicitudes
    has_many :servicios, through: :solicitudes
end 