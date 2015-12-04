class NewsEventsController < ApplicationController
  before_action :set_news_event, only: [:show, :edit, :update, :destroy]
  before_filter :load_university
  before_filter :check_university,:except => [:show,:index]
  # GET /news_events
  # GET /news_events.json
  def index
    @news_events = @university.news_events
  end

  # GET /news_events/1
  # GET /news_events/1.json
  def show
    @news_event = @university.news_events.find(params[:id])
  end

  # GET /news_events/new
  def new
    @news_event = @university.news_events.build
  end

  # GET /news_events/1/edit
  def edit
    @news_event = @university.news_events.find(params[:id])
  end

  # POST /news_events
  # POST /news_events.json
  def create
    @news_event = @university.news_events.create(news_event_params)

    respond_to do |format|
      if @news_event.save
        format.html { redirect_to ([@news_event.university, @news_event]), notice: 'News event was successfully created.' }
        format.json { render :show, status: :created, location: @news_event }
      else
        format.html { render :new }
        format.json { render json: @news_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_events/1
  # PATCH/PUT /news_events/1.json
  def update
    @news_event = @university.news_events.find(params[:id])
    respond_to do |format|
      if @news_event.update(news_event_params)
        format.html { redirect_to ([@news_event.university, @news_event]), notice: 'News event was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_event }
      else
        format.html { render :edit }
        format.json { render json: @news_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_events/1
  # DELETE /news_events/1.json
  def destroy
    @news_event = @university.news_events.find(params[:id])
    @news_event.destroy
    respond_to do |format|
      format.html { redirect_to university_news_event_url, notice: 'News event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_event
      @news_event = NewsEvent.find(params[:id])
    end

    def load_university
      @university = University.find(params[:university_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_event_params
      params.require(:news_event).permit(:title, :post_date, :author, :content, :university_id)
    end
    def check_university
         @university = University.find(params[:university_id])
        unless (current_user.university.id == @university.id )
          redirect_to @university, :alert => "Access denied."
         end
    end
end
