class SessionPlayersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_session_player, only: [:show, :edit, :update, :destroy]

  # GET /session_players
  # GET /session_players.json
  def index
    @session_players = SessionPlayer.all
  end

  # GET /session_players/1
  # GET /session_players/1.json
  def show
  end

  # GET /session_players/new
  def new
    @session_player = SessionPlayer.new
  end

  # GET /session_players/1/edit
  def edit
  end

  # POST /session_players
  # POST /session_players.json
  def create
    @session_player = SessionPlayer.new(session_player_params)

    respond_to do |format|
      if @session_player.save
        format.html { redirect_to @session_player, notice: 'Session player was successfully created.' }
        format.json { render :show, status: :created, location: @session_player }
      else
        format.html { render :new }
        format.json { render json: @session_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_players/1
  # PATCH/PUT /session_players/1.json
  def update
    respond_to do |format|
      if @session_player.update(session_player_params)
        format.html { redirect_to @session_player, notice: 'Session player was successfully updated.' }
        format.json { render :show, status: :ok, location: @session_player }
      else
        format.html { render :edit }
        format.json { render json: @session_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_players/1
  # DELETE /session_players/1.json
  def destroy
    @session_player.destroy
    respond_to do |format|
      format.html { redirect_to session_players_url, notice: 'Session player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upload
    @session_player = SessionPlayer.new(session_player_params)
    uploaded_file = params[:session_player][:video_file]
    file_name = "#{Time.zone.now.to_i.to_s + Time.zone.now.usec.to_s}.webm"
    file_path = Rails.root.join('public', file_name)
    File.open(file_path, 'w+b') do |f|
      f.write(uploaded_file.read)
    end
    @session_player.session_video = "/#{file_name}"
    respond_to do |format|
      if @session_player.save
        format.html { redirect_to @session_player, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @session_player }
      else
        format.html { render :edit }
        format.json { render json: @session_player.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_player
      @session_player = SessionPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_player_params
      params.require(:session_player).permit(:user_id, :web_session_id, :session_video,
                                             :instrument, :delay, :session_movie)
    end
end
