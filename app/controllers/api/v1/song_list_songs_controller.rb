class Api::V1::SongListSongsController < ApplicationController
  # before_action :set_song_list, only: [:show, :update, :destroy]

  # GET /song_list_songs
  def index
    @song_list_songs = SongListSong.all

    render json: @song_list_songs
  end

  # GET /song_list_songs/1
  def show
    render json: @song_list_song
  end

  # POST /song_list_songs
  def create
    @song_list_song = SongListSong.find_or_create_by(song_list_song_params)

    render json: @song_list_song, status: :created, location: @song_list_song
  end

  # PATCH/PUT /song_list_songs/1
  def update
    if @song_list_song.update(song_list_song_params)
      render json: @song_list_song
    else
      render json: @song_list_song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /song_list_songs/1
  def destroy
    @song_list_song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_list
      @song_list_song = SongListSong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_list_song_params
      params.require(:song_list_song).permit(:song_id, :song_list_id)
    end
end

