class ApplicationController < ActionController::Base
  include UniversitiesHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.attr == 1 then
      student = Student.find_by(email: current_user.email)
      if student == nil then
        new_student_path
      else
        student_path(id: student.id)
      end
    else 
      universities_path
    end
  end

  private
  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end

end
