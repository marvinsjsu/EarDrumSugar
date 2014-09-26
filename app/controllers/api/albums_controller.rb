class Api::AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id]);
  end

  def edit

  end

  def update

  end

  def create

  end

  def destroy

  end

end
