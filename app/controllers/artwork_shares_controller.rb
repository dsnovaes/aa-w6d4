class ArtworkSharesController < ApplicationController

  def create
    artwork_share = ArtworkShare.new(artwork_share_params)
    if artwork_share.save
      render json: artwork_share, status: 201
    else
      render json: artwork_share.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork_share = ArtworkShare.find_by(id: params[:id])
    if artwork_share
      artwork_share.destroy
      render json: artwork_share
    else
      render plain: "artwork share not found", status: 404
    end
  end

  private
  def artwork_share_params
    params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end


end
