class Workout < ApplicationRecord
  belongs_to :user, optional: true
  has_many :worksets, dependent: :destroy
  has_many :movements, through: :worksets
  has_many :exercises, through: :worksets
  accepts_nested_attributes_for :worksets, allow_destroy: true
end
