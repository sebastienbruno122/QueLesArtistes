class NouveautesController < ApplicationController

  def index
    @nouveautes = Nouveaute.all

  end

  def show
    @nouveaute = Nouveaute.find(params[:id])
  end

  def new
    @artiste = Artiste.find(params[:artiste_id])
    @nouveaute = Nouveaute.new
  end

  def edit
    @nouveaute = Nouveaute.find(params[:id])
  end

  def update
    # @artiste = Artiste.find(params[:artiste_id])
    @nouveaute = Nouveaute.find(params[:id])
    @nouveaute.update(nouveaute_params)
    redirect_to artiste_path(@nouveaute.artiste)
  end

  def create
    @nouveaute = Nouveaute.new(nouveaute_params)
    @artiste = Artiste.find(params[:artiste_id])
    @nouveaute.artiste = @artiste
    @nouveaute.save
    redirect_to artiste_path(@artiste)
  end

    #DELETE /artistes/:id

  def destroy
    @nouveaute = Nouveaute.find(params[:id])
    @nouveaute.destroy
    redirect_to artiste_path(@nouveaute.artiste)
  end

    private

  def nouveaute_params
    params.require(:nouveaute).permit(:citation)
  end

end
