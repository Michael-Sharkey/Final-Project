class Workset < ApplicationRecord
  belongs_to :workout
  belongs_to :movement
  belongs_to :exercise
end
