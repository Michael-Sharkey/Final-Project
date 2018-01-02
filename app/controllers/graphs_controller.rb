class GraphsController < ApplicationController

  def radar
    get_user
    get_latest_workout_stats
    get_movements

    respond_to do |format|
      format.html
      format.json { render json: [@movements, @workout_dates, @workout_one, @workout_two, @workout_three, @workout_four, @workout_five] }
    end
  end

end
