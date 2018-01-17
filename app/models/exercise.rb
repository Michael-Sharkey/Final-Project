class Exercise < ApplicationRecord
  belongs_to :movement

  # validates :pattern, inclusion: { in: %w(Push Pull Squat Hinge Core),
  #   message: "%{value} is not a valid movement pattern" }



  
end
