class Mechanic < ActiveRecord::Base
  has_secure_password

  has_many :planes
  has_many :plane_faults, through: :planes
  has_many :faults, through: :plane_faults

  validates_presence_of :name, :email, :password, :position, :years_experience
end
