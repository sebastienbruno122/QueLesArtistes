class ArtistesController < ApplicationController

    def index
        @artistes = Artiste.all
      end
end
