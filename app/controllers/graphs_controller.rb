class GraphsController < ApplicationController
  def radar
    @movements = Movement.order(:name)
    @exercises = Movement.exercises.order(:movement)

    respond_to do |format|
      format.html
      format.json { render json: @movements }
    end
  end

end
