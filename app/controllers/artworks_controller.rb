class ArtworksController < ApplicationController



    private
    def artwork_params
      params.require(:artwork).permit(:title, :image_url)
    end
end