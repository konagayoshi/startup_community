class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :load_university
  before_filter :check_university, :except => [:show,:index]
  # GET /courses.json
  def index
    @courses = @university.courses
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = @university.courses.find(params[:id])
  end

  # GET /courses/new
  def new
    @course = @university.courses.build
  end

  # GET /courses/1/edit
  def edit
    @course = @university.courses.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = @university.courses.create(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to ([@course.university, @course]), notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @course = @university.courses.find(params[:id])
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to ([@course.university, @course]), notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = @university.courses.find(params[:id])
    @course.destroy
    respond_to do |format|
      format.html { redirect_to university_course_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    def load_university
      @university = University.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :instructor, :content, :university_id)
    end
    def check_university
         @university = University.find(params[:university_id])
        unless (current_user.university.id == @university.id )
          redirect_to @university, :alert => "Access denied."
         end
    end
end
