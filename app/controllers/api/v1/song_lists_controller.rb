class Api::V1::SongListsController < ApplicationController
  before_action :set_song_list, only: [:show, :update, :destroy]

  # GET /song_lists
  def index
    @song_lists = SongList.all

    render json: @song_lists
  end

  # GET /song_lists/1
  def show
    render json: @song_list
  end

  # POST /song_lists
  def create
    @song_list = SongList.new(song_list_params)

    if @song_list.save
      render json: @song_list, status: :created, location: @song_list
    else
      render json: @song_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /song_lists/1
  def update
    if @song_list.update(song_list_params)
      render json: @song_list
    else
      render json: @song_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /song_lists/1
  def destroy
    @song_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_list
      @song_list = SongList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_list_params
      params.require(:song_list).permit(:name, :user_id)
    end
end
