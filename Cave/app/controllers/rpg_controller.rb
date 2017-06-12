class RpgController < ApplicationController
  def index
      session[:gold] ||= 0
      session[:activities] ||=[]
      
      @gold = session[:gold]
      @activities = session[:activities]
  end
    
  def gimme
     if params[:location] == 'farm'
      gold = rand(10..20)
     elsif params[:location] == 'cave'
      gold = rand(5..10)
     elsif params[:location] == 'casino'
      gold = rand(-50..50)
     elsif params[:location] == 'house'
      gold = rand(2..5)
     end
    
      current_time=Time.now
          
      if gold > 0
      session[:activities].insert(0, "You got #{gold} gold things from the #{params[:location]}!")
      else
      session[:activities].insert(0, "LOL You went to a casino and lost #{gold} gold things. LOL.")
      end
      
    session[:gold] += gold
    @activities = session[:activities]
   print session[:activities]  
    redirect_to '/'
  end  

  def clear
      reset_session
      redirect_to '/'
  end
end
