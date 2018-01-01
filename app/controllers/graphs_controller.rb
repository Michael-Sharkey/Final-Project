class GraphsController < ApplicationController

  def radar
    get_user
    get_workouts
    get_sets

    respond_to do |format|
      format.html
      format.json { render json: [@user.email, @user.id, @workouts] }
    end
  end

end
