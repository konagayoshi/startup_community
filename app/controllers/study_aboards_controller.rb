class StudyAboardsController < ApplicationController
  before_action :set_study_aboard, only: [:show, :edit, :update, :destroy]
  before_filter :load_university
  before_filter :check_university, :except => :show
  # GET /study_aboards
  # GET /study_aboards.json
  def index
    @study_aboards = @university.study_aboards
  end

  # GET /study_aboards/1
  # GET /study_aboards/1.json
  def show
    @study_aboard = @university.study_aboards.find(params[:id])
  end

  # GET /study_aboards/new
  def new
    @study_aboard = @university.study_aboards.build
  end

  # GET /study_aboards/1/edit
  def edit
    @study_aboard = @university.study_aboards.find(params[:id])
  end

  # POST /study_aboards
  # POST /study_aboards.json
  def create
    @study_aboard = @university.study_aboards.create(study_aboard_params)

    respond_to do |format|
      if @study_aboard.save
        format.html { redirect_to ([@study_aboard.university, @study_aboard]), notice: 'Study aboard was successfully created.' }
        format.json { render :show, status: :created, location: @study_aboard }
      else
        format.html { render :new }
        format.json { render json: @study_aboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_aboards/1
  # PATCH/PUT /study_aboards/1.json
  def update
    @study_aboard = @university.study_aboards.find(params[:id])
    respond_to do |format|
      if @study_aboard.update(study_aboard_params)
        format.html { redirect_to ([@study_aboard.university, @study_aboard]), notice: 'Study aboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_aboard }
      else
        format.html { render :edit }
        format.json { render json: @study_aboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_aboards/1
  # DELETE /study_aboards/1.json
  def destroy
    @study_aboard = @university.study_aboards.find(params[:id])
    @study_aboard.destroy
    respond_to do |format|
      format.html { redirect_to university_study_aboard_url, notice: 'Study aboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_aboard
      @study_aboard = StudyAboard.find(params[:id])
    end

    def load_university
      @university = University.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_aboard_params
      params.require(:study_aboard).permit(:title, :destination, :start_time, :duration, :sponsor, :requirements, :content, :contact, :university_id)
    end
    def check_university
         @university = University.find(params[:university_id])
        unless (current_user.university.id == @university.id )
          redirect_to @university, :alert => "Access denied."
         end
    end
end
