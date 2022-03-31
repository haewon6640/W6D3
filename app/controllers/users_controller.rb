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
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        user = User.find_by(id:params[:id])

        user.username = params[:username]
        if user.save
            redirect_to user_url 
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy 
        user = User.find_by(id:params[:id])
        if user.destroy
            redirect_to users_url
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
    
end