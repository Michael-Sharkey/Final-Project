class Movement < ApplicationRecord
  has_many :worksets
  has_many :exercises
  accepts_nested_attributes_for :worksets
end
