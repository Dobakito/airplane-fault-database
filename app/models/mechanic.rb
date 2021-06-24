class Mechanic < ActiveRecord::Base
  has_secure_password

  has_many :planes
  has_many :plane_faults, through: :planes
  has_many :faults, through: :plane_faults
end
