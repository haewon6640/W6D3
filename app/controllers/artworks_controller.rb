class ArtworksController < ApplicationController

    def index
        #given user_id, find artworks belonging to or shared with that user
        if params[:user_id]
            artwork = Artwork
                        .joins(:shared_viewers)
                        .where("artwork_shares.viewer_id = #{params[:user_id]} OR artist_id = #{params[:user_id]}")
            render json: artwork
        else
            render json: Artwork.all
        end
    end

    def show
        artwork = Artwork.find_by(id: params[:id])
        if artwork
            render json: artwork
        else
            render plain: 'No artwork with that id.'
        end
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artwork = Artwork.find_by(id: params[:id])
        if artwork
            artwork.destroy
            redirect_to artwork_url
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity       
        end
    end

    def update
        artwork = Artwork.find_by(id: params[:id])
        artwork.title = artwork_params[:title] unless artwork_params[:title].nil?
        artwork.image_url = artwork_params[:image_url] unless artwork_params[:image_url].nil?
        artwork.artist_id = artwork_params[:artist_id] unless artwork_params[:artist_id].nil? 
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity       
        end
    end

    private

    def artwork_params
        params.require(:artwork).permit(:title,:image_url,:artist_id)
    end
end