class ListController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end
  
  def create
    @list = List.new(list_params)

    if @list.save
    redirect_to lists_path #redirige vers l index si ont veut rediriger vers le produit crée on lui passe la route associer

    else
      render :new
    end

  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

end
