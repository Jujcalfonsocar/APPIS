class Huesped < ApplicationRecord #ActiveRecord::Base
    self.primary_key = 'cedula'
    validates_uniqueness_of :cedula
    has_many :solicituds
    has_many :servicios, through: :solicituds
end 