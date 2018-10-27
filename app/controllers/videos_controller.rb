class VideosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all.order(created_at: :desc)
    @user_id = current_user.id
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @user_id = current_user.id
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create

    @video = Video.new(
      name: params[:video][:name],
      user: current_user,
      instrument: params[:video][:instrument],
      url: params[:video][:url],
      score: params[:video][:score]
    )

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def ensure_correct_user
    @video = Video.find_by(id: params[:id])
    if @video.user.id != current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/videos/index")
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:name, :instrument, :url, :score)
    end


end
