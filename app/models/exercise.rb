class Exercise < ApplicationRecord
  belongs_to :workout, optional: true

  # scope :pushes, ->           { (where(movement_id: 1)) }
  # scope :pull, ->           { (where(movement_id: 2)) }
  # scope :squat, ->          { (where(movement_id: 3)) }
  # scope :hip_extension, ->  { (where(movement_id: 4)) }
  # scope :core_stability, -> { (where(movement_id: 5)) }
  #
  #
  # def self.movement_pattern(id)
  #   where("movement_id = '?'", id)
  # end
  #
  # def self.exercise(id)
  #   where("exercise_id = '?'", id)
  # end
  #
  # def self.movement_volume(movement)
  #   where("workset.movement.pattern = '?'", movement).map{|x| x * }.reduce(:+)
  # end
  #
  #   @pushVol = @workouts.where("worksets.movement = 'Push'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @pullVol = @workouts.where("worksets.movement = 'Pull'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @squatVol = @workouts.where("worksets.movement = 'Squat'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @hingeVol = @workouts.where("worksets.movement = 'Hip Extension'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @coreVol = @workouts.where("worksets.movement = 'Core Stability'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)

end
