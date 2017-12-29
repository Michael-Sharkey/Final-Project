class Exercise < ApplicationRecord
  has_many :worksets, inverse_of: :exercise
  belongs_to :movement, optional: true
  accepts_nested_attributes_for :worksets
end
