class PlaneFault < ApplicationRecord
  belongs_to :plane
  belongs_to :fault
end
