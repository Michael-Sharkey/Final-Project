class MovementPattern < ApplicationRecord
  has_many :worksets

  accepts_nested_attributes_for :movements

end
