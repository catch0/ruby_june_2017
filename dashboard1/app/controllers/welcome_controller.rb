class WelcomeController < ApplicationController
  def index
      @branch= Branch.all
  end
end
