class UsersController < ApplicationController

  def index
  end

  def show
    @active = current_user.meals.last
    @meals = current_user.meals.order(created_at: :desc).offset(1)
    @journal = Journal.new
  end


  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user), notice: 'Updated your information'
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :bio, :location, :age, :height, :weight, :avatar)
  end
end
