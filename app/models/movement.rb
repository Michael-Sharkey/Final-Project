class Movement < ApplicationRecord
  has_many :worksets, inverse_of: :movement
  has_many :exercises, inverse_of: :movement
  accepts_nested_attributes_for :worksets
end
