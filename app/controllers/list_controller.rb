class ListController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = list.find(params[:id])
  end
end
