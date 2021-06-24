class Mechanic < ApplicationRecord
  has_many :planes
  has_many :plane_faults, through: :planes
  has_many :faults, through: :plane_faults
end
