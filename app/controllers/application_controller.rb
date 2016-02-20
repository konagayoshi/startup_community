class ApplicationController < ActionController::Base
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
    elsif current_user.attr == 2 then
      #companies_path
      company = Company.find_by(email: current_user.email)
      if company == nil then
        new_company_path
      else
        company_path(id: company.id)
      end
    else 
      #universities_path
      university = University.find_by(email: current_user.email)
      if university == nil then
        new_university_path
      else
        university_path(id: university.id)
      end
    end
  end

  private
  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end

end
