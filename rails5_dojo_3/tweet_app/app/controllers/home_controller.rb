class HomeController < ApplicationController
  before_action :ensure_correct_user, {only: [:top]}  
  
  def top
    
  end
  
  def about
    
  end
end
