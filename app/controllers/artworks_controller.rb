class ArtworksController < ApplicationController

    def index
      artworks = Artwork.all
      render json: artworks
    end

    def create
      artwork = Artwork.new(artwork_params)
      if artwork.save
        render json: artwork, status: :created
      else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
    end

    def show
      artwork = Artwork.find_by(id: params[:id])
      if artwork.nil?
        render plain: "artwork not found", status: 404
      else
        render json: artwork
      end

    end

    def update
      artwork = Artwork.find_by(id: params[:id])
      if artwork.nil?
        render plain: "artwork not found", status: 404
      elsif artwork.update(artwork_params)
        render json: artwork
      else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
      end

    end

    def destroy
      artwork = Artwork.find_by(id: params[:id])
      if artwork.nil?
        render plain: "artwork not found", status: 404
      elsif artwork.destroy
        redirect_to artworks_url
      else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
      
    end


    private
    def artwork_params
      params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end