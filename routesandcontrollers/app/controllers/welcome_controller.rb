class WelcomeController < ApplicationController

def index
      render text: "what do you want me to say???"
  end

def hello
  render text: "hello coding dojo"
end

def sayhello
    unless params[:name]
        render text: "Saying Hello!"
    else
        if params[:name] == "michael"
            redirect_to "/say/hello/joe"
        else
        render text: "Saying Hello #{params[:name]}!"
        end
    end
end

def times
    session[:count] ||= 0
    render text: "You have visited this url #{session[:count] += 1} time(s)"
end
def timesrestart
    reset_session
    render text: "you have destroyed the session ya jerk! #{session[:count]}"
end
    
end
