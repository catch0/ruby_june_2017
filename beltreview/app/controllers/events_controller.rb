class EventsController < ApplicationController
    
    def index
    @user = User.find(session[:user_id])
        
    @stevents = Event.where(state: @user.state).includes(:user)
        
    @events = Event.where.not(state: @user.state).includes(:user)
    
    @events_attending_ids = @user.events_attending_ids
    
    end
    
    def create
        event = Event.create(event_params.merge(user: current_user))
        if event.valid?
            redirect_to '/events'
        else
            flash[:event_errors] = "Invalid input "
            redirect_to '/events'
        end
    end
    
    def show
        @event = Event.find(params[:id])
        @guests = Guest.where(event_id:params[:id]).includes(:user)
    end
    
    def destroy
        Event.destroy(params[:id])
        redirect_to '/events'
    end
    private
    
    def event_params
        params.require(:event).permit(:name, :date, :location, :state )
    end
end
