class Huesped < ApplicationRecord #ActiveRecord::Base
    self.primary_key = 'cedula'
    validates_uniqueness_of :cedula, message: "Ya existe un huesped registrado con esta cedula"
    has_many :solicituds, foreign_key:"huesped_id"
    has_many :servicios, through: :solicituds
end 