class SessionsController < ApplicationController
    def create
       user = User.find_by(email: login_params[:email])
        if user && user.authenticate(login_params[:password])
            session[:user_id] = user.id
            redirect_to '/success'
        else
            flash[:login_errors] = "Awwsnap, did you forget your password? Did you forget to register first?"
            redirect_to '/'
        end
    end
    
    def success
        @current_user = current_user    
    end
    
    
    private
    def login_params
        params.require(:login).permit(:email, :password)
    end
end
