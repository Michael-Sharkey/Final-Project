class GraphsController < ApplicationController

  def radar
    get_user
    get_movement_info
    get_workout_info

    @pushWeight = @pushes.map{|p|p.weight}.reduce(:+)
    @pushSets = @pushes.length
    @pushReps = @pushes.map{|p|p.repetitions}.reduce(:+)
    @pushVolume = @pushWeight * @pushReps
    @pushRPE = @pushes.map{|p|p.rpe}.reduce(:+).to_f / @pushSets

    @pullWeight = @pulls.map{|p|p.weight}.reduce(:+)
    @pullSets = @pulls.length
    @pullReps = @pulls.map{|p|p.repetitions}.reduce(:+)
    @pullVolume = @pullWeight * @pullReps
    @pullRPE = @pulls.map{|p|p.rpe}.reduce(:+).to_f / @pullSets

    @squatWeight = @squats.map{|p|p.weight}.reduce(:+)
    @squatSets = @squats.length
    @squatReps = @squats.map{|p|p.repetitions}.reduce(:+)
    @squatVolume = @squatWeight * @squatReps
    @squatRPE = @squats.map{|p|p.rpe}.reduce(:+).to_f / @squatSets

    @hingeWeight = @hinges.map{|p|p.weight}.reduce(:+)
    @hingeSets = @hinges.length
    @hingeReps = @hinges.map{|p|p.repetitions}.reduce(:+)
    @hingeVolume = @hingeWeight * @hingeReps
    @hingeRPE = @hinges.map{|p|p.rpe}.reduce(:+).to_f / @hingeSets

    @coreWeight = @cores.map{|p|p.weight}.reduce(:+)
    @coreSets = @cores.length
    @coreReps = @cores.map{|p|p.repetitions}.reduce(:+)
    @coreVolume = @coreWeight * @coreReps
    @coreRPE = @cores.map{|p|p.rpe}.reduce(:+).to_f / @coreSets

    respond_to do |format|
      format.html
      format.json { render json: [ [@pushWeight, @pushSets, @pushReps, @pushVolume, @pushRPE], [@pullWeight, @pullSets, @pullReps, @pullVolume, @pullRPE], [@squatWeight, @squatSets, @squatReps, @squatVolume, @squatRPE], [@hingeWeight, @hingeSets, @hingeReps, @hingeVolume, @hingeRPE], [@coreWeight, @coreSets, @coreReps, @coreVolume, @coreRPE] ] }
    end
  end

  def bubble
    get_user
    
    respond_to do |format|
      format.html
      format.json { render json: [  ] }
    end
  end

end
