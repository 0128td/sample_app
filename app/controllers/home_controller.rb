class HomeController < ApplicationController

  def top
  end

  def login
    @user = User.find_by(email: params[:email],password: params[:password])

    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/top")

    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("top")

    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/top")

  end

  def infomation

  end


end
