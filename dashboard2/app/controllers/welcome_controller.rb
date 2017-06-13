class WelcomeController < ApplicationController
  def index
    @branch= Branch.all
  end
  def show
    @branch = Branch.find(params[:id])
  end
  def new
  end
  def create
    @branch = Branch.new(name:params[:name], street:params[:street], city:params[:city], state:params[:state])
      if @branch.save
        redirect_to '/'
      else flash[:errors] = @branch.errors.full_messages
        redirect_to '/new'
      end
  end
  def edit
    @branch = Branch.find(params[:id])
  end
    
  def update
      branch = Branch.update(params[:id], name: params[:name], street: params[:street], city: params[:city], state: params[:state])
      if branch.valid? 
          redirect_to '/'
      else 
          flash[:errors] = branch.errors.full_messages
          redirect_to "/edit/#{branch.id}"
      end
  end
def delete
   branch = Branch.destroy(params[:id])
    redirect_to '/'
end
    
end
