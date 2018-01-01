class GraphsController < ApplicationController

  def radar
    get_user
    get_movements
    get_exercises

    @workouts = @user.workouts.last(5).reverse
    @sets = @workouts.map{|w|w.worksets.all}

    respond_to do |format|
      format.html
      format.json { render json: [@movements, @exercises, @workouts, @sets] }
    end
  end

end
