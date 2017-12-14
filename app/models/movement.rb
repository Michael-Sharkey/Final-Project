class Movement < ApplicationRecord
  has_and_belongs_to_many :musclegroups
  has_many :muscles, through: :musclegroups
  has_and_belongs_to_many :training_sessions
end
