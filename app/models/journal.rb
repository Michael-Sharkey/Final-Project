class Journal < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments, allow_destroy: true
end
