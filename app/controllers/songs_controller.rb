class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:update, :edit, :destroy]

  def index
    @songs = @artist.songs
  end

  def new
    @song = Song.new
  end

  def edit
    render partial: "form"
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to billboard_artist_path
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to billboard_artist_path
    else
      render :new
    end
  end

  def destroy
    @artist.song.destroy
    redirect_to [@artist]
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :avatar, :length)
    end
end
