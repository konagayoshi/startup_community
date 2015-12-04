class UniversitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_university, only: [:show, :edit, :update, :destroy]
  before_filter :check_university, :except => [:show,:index,:new,:create]
  

  # GET /universities
  # GET /universities.json
  def index
    @universities = University.all
  end

  # GET /universities/1
  # GET /universities/1.json
  def show
  end

  # GET /universities/new
  def new
    @university = current_user.build_university 
  end

  # GET /universities/1/edit
  def edit
  end

  # POST /universities
  # POST /universities.json
  def create
    params[:university][:user_id] = current_user.id
    @university = University.new(university_params)

    respond_to do |format|
      if @university.save
        format.html { redirect_to @university, notice: 'University was successfully created.' }
        format.json { render :show, status: :created, location: @university }
      else
        format.html { render :new }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universities/1
  # PATCH/PUT /universities/1.json
  def update
    respond_to do |format|
      if @university.update(university_params)
        format.html { redirect_to @university, notice: 'University was successfully updated.' }
        format.json { render :show, status: :ok, location: @university }
      else
        format.html { render :edit }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universities/1
  # DELETE /universities/1.json
  def destroy
    @university.destroy
    respond_to do |format|
      format.html { redirect_to universities_url, notice: 'University was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def university_params
      params.require(:university).permit(:name, :location, :introduction, :contact, :cooperation, :rank, :reputation, :checked, :user_id)
    end
    def check_university
        @university = University.find(params[:id])
        unless (current_user.id == @university.user_id )
          redirect_to root_path, :alert => "Access denied."
         end
    end
end