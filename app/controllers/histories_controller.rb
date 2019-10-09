class HistoriesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    key = Key.find(params[:key_id])
    if key.status != 20
      key.update(status: 20)
      History.create(key_id: params[:key_id], user_id: current_user.id)
      flash[:success] = "持ち出ししました。"
    else
      flash[:danger] = "既に持ち出しされています。"
    end
    redirect_back(fallback_location: root_url)
  end

  def destroy
  end
  
  def replace
    history = History.find(params[:history_id])
    if history.user == current_user
      history.ended_at = DateTime.now
      history.save
      history.key.update(status: 10)
      flash[:success] = "返却しました"
      redirect_back(fallback_location: root_url)
    else
      flash[:success] = "失敗しました"
      redirect_back(fallback_location: root_url)
    end
  end
  
  def lost
    history = History.find(params[:history_id])
    if history.user == current_user
      history.save
      history.key.update(status: 90)
      flash[:danger] = "紛失しました"
      redirect_back(fallback_location: root_url)
    else
      flash[:success] = "失敗しました"
      redirect_back(fallback_location: root_url)
    end
  end
end
