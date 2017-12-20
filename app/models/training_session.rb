class TrainingSession < ApplicationRecord
  has_many :exercises, dependent: :destroy
  has_many :movement_patterns, dependent: :destroy
  accepts_nested_attributes_for :exercises, allow_destroy: true
  accepts_nested_attributes_for :movement_patterns, allow_destroy: true

end
