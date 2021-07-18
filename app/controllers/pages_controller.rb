class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home
  def home
    @artistes = Artiste.all
    @nouveautes = Nouveaute.all
  end

  def show
    @artiste = Artiste.find(params[:id])
  end
      private

def artiste_params
    params.require(:artiste).permit(:name, :genre, :biography, :photo, :youtube_link, :description, :les_dessous, :youtube_nouveaute1, :youtube_nouveaute2, :youtube_nouveaute3, :youtube_nouveaute4)
  end

end
