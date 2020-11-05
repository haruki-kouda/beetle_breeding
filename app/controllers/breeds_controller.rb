class BreedsController < ApplicationController

  def index
  end

  def new
    @breed = Breed.new
  end

  def create
    @breed = Breed.new(breed_params)
    #binding.pry
    if @breed.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @breed = Breed.find(params[:id])
  end

  private
  def breed_params
    params.require(:breed).permit(:image, :name, :category_id, :beetle_type_id, :stag_beetle_type_id, :parent_information, :date, :result, :note).merge(user_id: current_user.id)
  end
end
