class Movement < ApplicationRecord
  has_many :exercises, dependent: :destroy
  has_many :worksets, through: :exercises

  accepts_nested_attributes_for :exercises, allow_destroy: true
end
