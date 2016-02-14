class JobdemandsController < ApplicationController
  before_action :set_jobdemand, only: [:show, :edit, :update, :destroy]

  # GET /jobdemands
  # GET /jobdemands.json
  def index
    @q = Jobdemand.search(search_params)
    @jobdemands = @q
      .result
  end

  # GET /jobdemands/1
  # GET /jobdemands/1.json
  def show
  end

  # GET /jobdemands/new
  def new
    @jobdemand = Jobdemand.new
  end

  # GET /jobdemands/1/edit
  def edit
  end

  # POST /jobdemands
  # POST /jobdemands.json
  def create
    @jobdemand = Jobdemand.new(jobdemand_params)

    respond_to do |format|
      if @jobdemand.save
        format.html { redirect_to @jobdemand, notice: 'Jobdemand was successfully created.' }
        format.json { render :show, status: :created, location: @jobdemand }
      else
        format.html { render :new }
        format.json { render json: @jobdemand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobdemands/1
  # PATCH/PUT /jobdemands/1.json
  def update
    respond_to do |format|
      if @jobdemand.update(jobdemand_params)
        format.html { redirect_to @jobdemand, notice: 'Jobdemand was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobdemand }
      else
        format.html { render :edit }
        format.json { render json: @jobdemand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobdemands/1
  # DELETE /jobdemands/1.json
  def destroy
    @jobdemand.destroy
    respond_to do |format|
      format.html { redirect_to jobdemands_url, notice: 'Jobdemand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def searchtop
    @jobdemand = Search::Jobdemand.new
  end

  def search
    @jobdemand = Search::Jobdemand.new(search_params)
    @jobdemands = @jobdemand
     .matches
     .includes(:company)
  end


  private

  # Use callbacks to share common setup or constraints between actions.                 
    def set_jobdemand
      @jobdemand = Jobdemand.find(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.  
    def jobdemand_params
      params.require(:jobdemand).permit(:title, :overview, :responsibility, :education, :workexperience, :launguage, :other)
    end

 
  def search_params
      params
      .require(:search_jobdemand)
      .permit(Search::Jobdemand::ATTRIBUTES)
  end
end

