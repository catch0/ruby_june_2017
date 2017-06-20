class GuestsController < ApplicationController
    before_action :user_authorized, only: [:create]
    def create
        guest=Guest.create(user: current_user, event:Event.find(params[:id]))
        redirect_to '/events'
    end
    
    def destroy
        Guest.find_by(user: current_user, event: Event.find(params[:id])).destroy
        redirect_to '/events'
    end
end
