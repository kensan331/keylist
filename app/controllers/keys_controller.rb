class KeysController < ApplicationController
  def index
    @keys = Key.order(id: :asc).page(params[:page]).per(25)
  end

  def show
    @key = Key.find(params[:id])
  end

  def new
  end

  def create
  end
end
