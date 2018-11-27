class Api::V1::JukeboxListsController < ApplicationController
  before_action :set_jukebox_list, only: [:show, :update, :destroy]

  # GET /jukebox_lists
  def index
    @jukebox_lists = JukeboxList.all

    render json: @jukebox_lists
  end

  # GET /jukebox_lists/1
  def show
    render json: @jukebox_list
  end

  # POST /jukebox_lists
  def create
    @jukebox_list = JukeboxList.new(jukebox_list_params)

    if @jukebox_list.save
      render json: @jukebox_list, status: :created, location: @jukebox_list
    else
      render json: @jukebox_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jukebox_lists/1
  def update
    if @jukebox_list.update(jukebox_list_params)
      render json: @jukebox_list
    else
      render json: @jukebox_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jukebox_lists/1
  def destroy
    @jukebox_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jukebox_list
      @jukebox_list = JukeboxList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jukebox_list_params
      params.require(:jukebox_list).permit(:location, :user_id)
    end
end
