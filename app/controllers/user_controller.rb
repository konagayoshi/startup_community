class UserController < ApplicationController
  def index
  end

  def show
   @user = User.find(params[:id])
   @student = Student.find(params[:user_ud])
 end

end
