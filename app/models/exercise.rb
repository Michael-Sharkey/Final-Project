class Exercise < ApplicationRecord
  has_many :worksets
  belongs_to :movements, optional: true
  accepts_nested_attributes_for :worksets
end
