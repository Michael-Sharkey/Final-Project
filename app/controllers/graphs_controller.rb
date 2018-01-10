class GraphsController < ApplicationController

  def bar
  end

  def polar

    # parse_info

    # @pushWeight = @pushes.map{|p|p.weight}.reduce(:+)
    # @pushSets = @pushes.length
    # @pushReps = @pushes.map{|p|p.reps}.reduce(:+)
    # @pushVolume = @pushWeight * @pushReps
    # @pushRPE = @pushes.map{|p|p.rpe}.reduce(:+).to_f / @pushSets

    # @pullWeight = @pulls.map{|p|p.weight}.reduce(:+)
    # @pullSets = @pulls.length
    # @pullReps = @pulls.map{|p|p.reps}.reduce(:+)
    # @pullVolume = @pullWeight * @pullReps
    # @pullRPE = @pulls.map{|p|p.rpe}.reduce(:+).to_f / @pullSets
    #
    # @squatWeight = @squats.map{|p|p.weight}.reduce(:+)
    # @squatSets = @squats.length
    # @squatReps = @squats.map{|p|p.reps}.reduce(:+)
    # @squatVolume = @squatWeight * @squatReps
    # @squatRPE = @squats.map{|p|p.rpe}.reduce(:+).to_f / @squatSets
    #
    # @hingeWeight = @hips.map{|p|p.weight}.reduce(:+)
    # @hingeSets = @hips.length
    # @hingeReps = @hips.map{|p|p.reps}.reduce(:+)
    # @hingeVolume = @hingeWeight * @hingeReps
    # @hingeRPE = @hips.map{|p|p.rpe}.reduce(:+).to_f / @hingeSets
    #
    # @coreWeight = @cores.map{|p|p.weight}.reduce(:+)
    # @coreSets = @cores.length
    # @coreReps = @cores.map{|p|p.reps}.reduce(:+)
    # @coreVolume = @coreWeight * @coreReps
    # @coreRPE = @cores.map{|p|p.rpe}.reduce(:+).to_f / @coreSets

    respond_to do |format|
      format.html
      format.json { render json: [ @movements, @workout_dates, @workouts, [@pushVol, @pullVol, @squatVol, @hingeVol, @coreVol] ]  }
    end
  end

  def bubble
    respond_to do |format|
      format.html
      format.json { render json: [  ] }
    end
  end

  def radar
    @workouts = current_user.workouts.most_recent(5)

    respond_to do |format|
      format.html
      format.json { render json: @workouts }
    end
  end



private

  # def parse_info
  #   @user = current_user
  #   @workouts = @user.workouts.joins(:worksets).order(created_at: :desc).limit(5)
  #   @workout_dates = @workouts.map{|w|[[w.created_at.month],[w.created_at.day],[w.created_at.year]]}
  #
  #   @exercises = Workset.order(:movement, :exercise).pluck(:exercise).uniq
  #   @movements = Workset.order(:created_at).pluck(:movement).uniq
  #   @pushVol = @workouts.where("worksets.movement = 'Push'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @pullVol = @workouts.where("worksets.movement = 'Pull'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @squatVol = @workouts.where("worksets.movement = 'Squat'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @hingeVol = @workouts.where("worksets.movement = 'Hip Extension'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #   @coreVol = @workouts.where("worksets.movement = 'Core Stability'").joins(:worksets).pluck(:weight, :reps).map{|x,y| x * y}.reduce(:+)
  #
  # end


end
