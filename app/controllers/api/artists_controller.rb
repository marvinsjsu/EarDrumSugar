class Api::ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit

  end

  def update

  end

  def create

  end

  def destroy

  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description);
  end

end
