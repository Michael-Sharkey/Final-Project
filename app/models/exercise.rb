class Exercise < ApplicationRecord
  belongs_to :exercise, optional: true
  has_many :worksets, inverse_of: :exercise
end
