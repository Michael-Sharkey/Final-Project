class Musclegroup < ApplicationRecord
  has_many :muscles

  accepts_nested_attributes_for :muscles

end
