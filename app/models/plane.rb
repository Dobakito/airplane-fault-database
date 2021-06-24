class Plane < ApplicationRecord
  belongs_to :mechanic
  has_many :plane_faults
  has_many :faults, through: :plane_faults
end
