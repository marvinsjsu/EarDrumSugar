class SongsController < ApplicationController
  
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
  
    if @artist.update_attributes(artist_params)
      @artist
    else
      flash.now[:errors] = @artist.errors.full_messages
      render :edit
    end
  end

  def create

  end

  def delete

  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description)
  end

end