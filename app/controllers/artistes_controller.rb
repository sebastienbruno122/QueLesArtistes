class ArtistesController < ApplicationController

  def index
    @artistes = Artiste.all
  end

  def show
    @artiste = Artiste.find(params[:id])
  end

  def new
    @artiste = Artiste.new
  end


  def create
    @artiste = Artiste.new(artiste_params)
    @artiste.save

    # no need for app/views/artistes/create.html.erb
    redirect_to artiste_path(@artiste)
    #@artiste = create(params[:artiste])
  end

  def edit
    @artiste = Artiste.find(params[:artiste])
  end

  def update
    @artiste = Artiste.find(params[:id])
    @artiste = update(params[:artiste])
  end


  private

  def artiste_params
    params.require(:artiste).permit(:name, :genre, :biography)
  end
end
