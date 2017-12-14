class TrainingSessionsController < ApplicationController
  def show
  end

  def new
    @user = current_user
    @training_session = @user.training_sessions.new
  end

  def create
    @user = current_user
    @training_session = @user.training_sessions.new(training_session_params)
    if @training_session.save
      redirect_to @user, notice: 'Nice!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private
  def training_session_params
    params.require(:training_session).permit(:user_id, :duration, :rating)
  end

end
