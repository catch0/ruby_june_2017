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
end
