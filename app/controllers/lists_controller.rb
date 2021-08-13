class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
    @movies = Movie.all
  end

  def create
    @list = List.new(list_params)
    if @list.save!
      redirect_to lists_path
    else
      render :new
    end
  end

  def delete
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
