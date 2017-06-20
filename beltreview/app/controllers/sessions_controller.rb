class SessionsController < ApplicationController
    def create
        user = User.find_by(email: login[:email])
        if 
            user && user.authenticate(login[:password])
            session[:user_id]== user.id
            redirect_to '/events'
        else
            flash[:login_errors] = "aww snap, did you forget to register? Or did you forget your password?"
            redirect_to '/'
        end     
    end
    
    def destroy
        reset_session
        redirect_to '/'
    end
    
    private
        def login
            params.require(:login).permit(:email, :password)
        end
end
