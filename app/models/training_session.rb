class TrainingSession < ApplicationRecord
  has_many :worksets, dependent: :destroy

  accepts_nested_attributes_for :worksets, allow_destroy: true


end
