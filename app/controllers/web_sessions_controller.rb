class WebSessionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_web_session, only: [:show, :edit, :update, :destroy, :join]

  # GET /web_sessions
  # GET /web_sessions.json
  def index
    @web_sessions = WebSession.all
  end

  # GET /web_sessions/1
  # GET /web_sessions/1.json
  def show
  end

  # GET /web_sessions/new
  def new
    @web_session = WebSession.new
  end

  # GET /web_sessions/1/edit
  def edit
  end

  # POST /web_sessions
  # POST /web_sessions.json
  def create
    @web_session = WebSession.new(web_session_params)

    respond_to do |format|
      if @web_session.save
        format.html { redirect_to @web_session, notice: 'Web session was successfully created.' }
        format.json { render :show, status: :created, location: @web_session }
      else
        format.html { render :new }
        format.json { render json: @web_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_sessions/1
  # PATCH/PUT /web_sessions/1.json
  def update
    respond_to do |format|
      if @web_session.update(web_session_params)
        format.html { redirect_to @web_session, notice: 'Web session was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_session }
      else
        format.html { render :edit }
        format.json { render json: @web_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_sessions/1
  # DELETE /web_sessions/1.json
  def destroy
    @web_session.destroy
    respond_to do |format|
      format.html { redirect_to web_sessions_url, notice: 'Web session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def join
    @session_player = SessionPlayer.new(user: current_user, web_session: @web_session)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_session
      @web_session = WebSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_session_params
      params.require(:web_session).permit(:name)
    end
end
