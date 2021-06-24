class Fault < ApplicationRecord
  has_many :plane_faults
  has_many :planes, through: :plane_faults
  has_many :mechanics, through: :planes
end
