class TrainingSessionsController < ApplicationController
  def show
  end

  def new
    @training_session = TrainingSession.new
    @training_session.user_id = current_user.id
    2.times { @training_session.worksets.new}
  end

  def create
    @training_session = TrainingSession.new(training_session_params)
    @training_session.user_id = current_user.id
    if @training_session.save
      redirect_to current_user, notice: 'Nice!'
    else
      render 'new', notice: 'Something went wrong'
    end
  end

  def edit
  end

  def update
  end

  private
  def training_session_params
    params.require(:training_session).permit(:user_id, :duration, :rating, worksets_attributes: [:idß, :exercise, :repetitions, :external_load, '_destroy'])
  end

end
