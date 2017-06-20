class UsersController < ApplicationController
    def index
    end
    
    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            redirect_to '/events'
        else
            flash[:reg_errors] = user.errors.full_messages
            redirect_to '/'
        end
    end
    
    def edit
        @user = User.find(session[:user_id])
    end
    
    def update
        user = User.update(params[:id], first_name: params[:first_name], last_name: params[:last_name], email: params[:email], location: params[:location])
        
        if user.valid?
        redirect_to '/events'
        else flash[:errors] = user.errors.full_messages
            redirect_to 'users/<%=@user.id%>'
        end
    end
    
    def user_params 
        params.require(:user).permit(:first_name, :last_name, :email, :location, :state, :password, :password_confirmation)
    end
        
end
