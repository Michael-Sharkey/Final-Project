class TrainingSession < ApplicationRecord
  belongs_to :user
  has_many :worksets
  has_many :musclegroups
  has_many :muscles, through: :musclegroups
  has_and_belongs_to_many :movements

end
