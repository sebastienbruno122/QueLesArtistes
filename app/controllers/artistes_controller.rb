class ArtistesController < ApplicationController

  def index
    @artistes = Artiste.all
  end

  def show
    @artiste = Artiste.find(params[:id])
    @video1 = Conred::Video.new(
      video_url: @artiste.youtube_nouveaute1,
      width: 285,
      height: 185,
      error_message: "Video url is invalid"
    )
    @video2 = Conred::Video.new(
      video_url: @artiste.youtube_nouveaute2,
      width: 285,
      height: 185,
      error_message: "Video url is invalid"
    )
    @video3 = Conred::Video.new(
      video_url: @artiste.youtube_nouveaute3,
      width: 285,
      height: 185,
      error_message: "Video url is invalid"
    )
    @video4 = Conred::Video.new(
      video_url: @artiste.youtube_nouveaute4,
      width: 285,
      height: 185,
      error_message: "Video url is invalid"
    )
  end

  def new
    @artiste = Artiste.new
  end

  def create
    @artiste = Artiste.new(artiste_params)
    @artiste.save
    redirect_to artiste_path(@artiste)
  end

  def edit
    @artiste = Artiste.find(params[:id])
  end

  def update
    @artiste = Artiste.find(params[:id])
    @artiste.update(artiste_params)
    redirect_to artiste_path(@artiste)
  end

  def destroy
    @artiste = Artiste.find(params[:id])
    @artiste.destroy
    redirect_to artistes_path
  end

  private

  def artiste_params
    params.require(:artiste).permit(:name, :genre, :biography, :photo, :youtube_link, :description, :les_dessous, :youtube_nouveaute1, :youtube_nouveaute2, :youtube_nouveaute3, :youtube_nouveaute4, :reseau1, :reseau2, :reseau3, :reseau4, :reseau5, :reseau6, :instagram_link, :spotify_link, :photo_redirection_youtube)
  end
end
