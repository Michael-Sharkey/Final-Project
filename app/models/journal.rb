class Journal < ApplicationRecord
  belongs_to :user
  has_many :comments, inverse_of: :journal, dependent: :destroy
  accepts_nested_attributes_for :comments, allow_destroy: true
end
