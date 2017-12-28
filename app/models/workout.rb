class Workout < ApplicationRecord
  belongs_to :user
  has_many :worksets, inverse_of: :workout, dependent: :destroy
  has_many :movements, through: :worksets
  has_many :exercises, through: :worksets
  accepts_nested_attributes_for :worksets, allow_destroy: true
end
