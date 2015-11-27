class AdmissionsController < ApplicationController
  before_action :set_admission, only: [:show, :edit, :update, :destroy]
  before_filter :load_university
  # GET /admissions
  # GET /admissions.json
  def index
    @admissions = @university.admissions
  end

  # GET /admissions/1
  # GET /admissions/1.json
  def show
    @admission = @university.admissions.find(params[:id])
  end

  # GET /admissions/new
  def new
    @admission = @university.admissions.build
  end

  # GET /admissions/1/edit
  def edit
    @admission = @university.admissions.find(params[:id])
  end

  # POST /admissions
  # POST /admissions.json
  def create
    @admission = @university.admissions.create(admission_params)

    respond_to do |format|
      if @admission.save
        format.html { redirect_to ([@admission.university, @admission]), notice: 'Admission was successfully created.' }
        format.json { render :show, status: :created, location: @admission }
      else
        format.html { render :new }
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admissions/1
  # PATCH/PUT /admissions/1.json
  def update
    @admission = @university.admissions.find(params[:id])
    respond_to do |format|
      if @admission.update(admission_params)
        format.html { redirect_to ([@admission.university, @admission]), notice: 'Admission was successfully updated.' }
        format.json { render :show, status: :ok, location: @admission }
      else
        format.html { render :edit }
        format.json { render json: @admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admissions/1
  # DELETE /admissions/1.json
  def destroy
    @admission = @university.admissions.find(params[:id])
    @admission.destroy
    respond_to do |format|
      format.html { redirect_to university_admission_url, notice: 'Admission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admission
      @admission = Admission.find(params[:id])
    end

    def load_university
      @university = University.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admission_params
      params.require(:admission).permit(:title, :start_time, :end_time, :content, :requirements, :demands, :contact, :university_id)
    end
end
