class SearchesController < ApplicationController

  def new
    @search = Search.new
      #@name = Pet.uniq.pluck(:name)

  end

  def create
    @search = Search.create(search_params)
    redirect_to(@search)
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :name, :breed, :animal_type, :phone_number, :age)
  end

end

