class PlaneFault < ActiveRecord::Base
  belongs_to :plane
  belongs_to :fault
end
