class UsersController < ApplicationController
    def index
        render json: User.all
    end
    #takes in an id in params .. params[:id]
    def show 
        user = User.find_by(id:params[:id])
        if user
            render json: user
        else
            render plain: "No user with that id."
        end
    end

    def create
        user = User.new(params.require(:user).permit(:name, :email))
        if user.save
          render json: user
        else
          render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        user = User.find_by(id:params[:id])

        user.email = params[:email] unless params[:email].nil?
        user.name = params[:name] unless params[:name].nil?
        
        if user.save
            redirect_to user_url 
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy 
        user = User.find_by(id:params[:id])
        if user.delete
            redirect_to users_url
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end
end