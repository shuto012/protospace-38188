class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
  end

  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile, :occupation, :position)
  end
end