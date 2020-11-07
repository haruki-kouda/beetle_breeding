class BreedsController < ApplicationController

  def index
  end

  def new
    @breed = Breed.new
  end

  def create
    @breed = Breed.new(breed_params)
    if @breed.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @breed = Breed.find(params[:id])
  end

  def edit
    @breed = Breed.find(params[:id])
  end

  def update
       @breed = Breed.find(params[:id])
    if @breed.update(breed_params)
      redirect_to breed_path
    else
      render :edit
    end
  end

  def destroy
    @breed = Breed.find(params[:id])
    @breed.destroy
    redirect_to root_path
  end

  private
  def breed_params
    params.require(:breed).permit(:image, :name, :category_id, :beetle_type_id, :stag_beetle_type_id, :parent_information, :date, :result, :note).merge(user_id: current_user.id)
  end
end
