class Huesped < ApplicationRecord #ActiveRecord::Base
    self.primary_key = 'cedula'
    has_many :solicituds
    has_many :servicios, through: :solicituds
end 