class DogsController < ApplicationController
  def new
    @dog = Dog.new
  end

  def index
    @dogs = Dog.all
    @total = Dog.count
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to @dog
    else
      render 'new'
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name)
  end
end
