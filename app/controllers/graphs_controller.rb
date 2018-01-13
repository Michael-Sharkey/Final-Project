class GraphsController < ApplicationController

  def bar
  end

  def polar
    @patterns = current_user.exercises.cumulative_volume

    respond_to do |format|
      format.html
      format.json { render json: @patterns }
    end
  end

  def bubble
    @patterns = current_user.exercises.cumulative_volume

    respond_to do |format|
      format.html
      format.json { render json: @patterns }
    end
  end

  def radar
    @workouts = current_user.workouts.most_recent(5)

    respond_to do |format|
      format.html
      format.json { render json: @workouts }
    end
  end

end
