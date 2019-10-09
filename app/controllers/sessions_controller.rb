class SessionsController < ApplicationController
  def new
  end

  def create
    employee_number = params[:session][:employee_number]
    password = params[:session][:password]
    if login(employee_number, password)
      flash[:success] = 'ログイン成功'
      redirect_to '/'
    else
      flash.now[:danger] = 'ログインに失敗しました。'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'ログアウトしました。'
    redirect_to root_url
  end
  
  private
  
  def login(employee_number, password)
    @user = User.find_by(employee_number: employee_number)
    if @user && @user.authenticate(password)
      session[:user_id] = @user.id
      return true
    else
      return false
    end
  end
end
