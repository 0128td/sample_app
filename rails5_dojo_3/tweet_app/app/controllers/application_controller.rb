class ApplicationController < ActionController::Base
  before_action :ensure_user 
  
  def ensure_user
    if session[:user_id] != nil
      @user_id = session[:user_id].to_i
      @current_user = User.find_by(id: @user_id)
      
    end
    
  end
  
  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
      
    end
    
  end
  
  
  def ensure_correct_user
    if @current_user != nil
      flash[:notice] = "すでにログインしています"
      redirect_to("/posts/index")
      
    end
    
  end
  
   def edit_user
     @user = User.find_by(id: params[:id])
     
    if @current_user.id != @user.id
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
      
    end
    
  end
  
  
  
end
