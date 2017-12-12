class Workset < ApplicationRecord
  has_and_belongs_to_many :musclegroups
  has_and_belongs_to_many :muscles
  belongs_to :user  
end
