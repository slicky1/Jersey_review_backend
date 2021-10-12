class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_input
    
    
        def index
            # users = User.all
            
            # render json: users

            session[:id] = "id"
            cookies[:test] = "test"
            render json: { session: session, cookies: cookies }
        end
    
        def show
            # user = User.find(params[:id])
            # render json: user 

            byebug
            render json: { message: "show"}
        end
    
        def create
            user = User.create!(user_params)
            render json: user, status: :created
        
        end
    
        def update
            user = find_user
            user.update(user_params)
           render json: user
        end
    
        def destroy
            user = find_user
            user.destroy
           head :no_content
        end
    
    
    
        private
    
        def user_params
            params.require(:user).permit(:user_name, :email, :password_digest)
        end
    
        def find_user
            User.find(params[:id])
        end
    
        def render_not_found
            render json: { error: "user not found" }, status: :not_found
        end
    
        def render_invalid_input(invalid)
            render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
        end
    end
    