class Workset < ApplicationRecord
  has_and_belongs_to_many :musclegroups
  belongs_to :training_session
  belongs_to :user

  accepts_nested_attributes_for :musclegroups

end
