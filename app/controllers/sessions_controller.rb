class SessionsController < ApplicationController
    def create
        
        user = User.find_by(user_name: user_params[:user_name])
        session[:user_id] = user.id
        render json: user 
    end

    def destroy
        session.delete :user_id
        render json: {"message": "Trying to logout"}
    end

    private

    def user_params
        params.permit(:user_name, :session)
    end

end