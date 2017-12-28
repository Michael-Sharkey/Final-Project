class Exercise < ApplicationRecord
  has_many :worksets, inverse_of: :exercise
  belongs_to :movement
  accepts_nested_attributes_for :worksets
end
