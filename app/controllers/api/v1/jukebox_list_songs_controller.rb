class Api::V1::JukeboxListSongsController < ApplicationController
  # before_action :set_jukebox_list_song, only: [:show, :update, :destroy]

  # GET /jukebox_list_songs
  def index
    @jukebox_list_songs = JukeboxListSong.all

    render json: @jukebox_list_songs
  end

  # GET /jukebox_list_songs/1
  def show
    render json: @jukebox_list_song
  end

  # POST /jukebox_list_songs
  def create
    @jukebox_list_song = JukeboxListSong.find_or_create_by(jukebox_list_song_params)

    render json: @jukebox_list_song, status: :created, location: @jukebox_list_song
  end

  # PATCH/PUT /jukebox_list_songs/1
  def update
    if @jukebox_list_song.update(jukebox_list_song_params)
      render json: @jukebox_list_song
    else
      render json: @jukebox_list_song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jukebox_list_songs/1
  def destroy
    @jukebox_list_song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jukebox_list_song
      @jukebox_list_song = JukeboxListSong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jukebox_list_song_params
      params.require(:jukebox_list_song).permit(:song_id, :jukebox_list_id)
    end
end
