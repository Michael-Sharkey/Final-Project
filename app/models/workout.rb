class Workout < ApplicationRecord
  # properties
  belongs_to :user, optional: true
  has_many :exercises, inverse_of: :workout, dependent: :destroy
  accepts_nested_attributes_for :exercises, allow_destroy: true

  # methods
  def self.most_recent(integer)
    order(created_at: :desc).limit(integer).uniq
  end

  def self.movement_pattern(movement)
    joins(:worksets).where("worksets.movement_id = '?'", movement)
  end


end
