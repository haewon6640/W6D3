class LikesController < ApplicationController
    def index
        begin
            if params[:user_id]
                likes = {liked_artworks: User.find_by(id: params[:user_id]).liked_artworks ,liked_comments: User.find_by(id: params[:user_id]).liked_comments}
                render json: likes
            elsif params[:artwork_id]
                render json: Artwork.find_by(id: params[:artwork_id]).likers 
            elsif params[:comment_id]
                render json: Comment.find_by(id: params[:comment_id]).likers
            end
        rescue StandardError
            render plain: "invalid params"
        end
    end

    def create

    end

    def destroy

    end

end