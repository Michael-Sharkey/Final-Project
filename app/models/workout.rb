class Workout < ApplicationRecord
  belongs_to :user, optional: true
  has_many :worksets, inverse_of: :workout, dependent: :destroy
  accepts_nested_attributes_for :worksets, allow_destroy: true
end
