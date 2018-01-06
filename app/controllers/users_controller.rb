class UsersController < ApplicationController
  before_action :get_user

  def index
  end

  def show
    @active = @user.meals.last
    @meals = @user.meals.order(created_at: :desc).offset(1)
    @journal = Journal.new

  end


  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Updated your information'
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
