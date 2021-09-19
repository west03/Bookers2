class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def edit
     @user = User.find(params[:id])
  end

  def show
     @user = User.find(params[:id])
     @books = @user.books
     @newbook = Book.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id), notice: "You have created user successfully."
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
