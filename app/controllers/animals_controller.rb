class AnimalsController < ApplicationController

  def index
    animals = Animal.all
    render json: animals
  end

  def show
    animal = Animal.find(params[:id])
    render json: animal
  end

  def update
    animal = Animal.find(params[:id])
    animal.update(animal_params)
    if animal.valid?
      render json: animal
    else
      render json: animal.errors
    end
  end

  def create
    new_animal = Animal.create(animal_params)
    if new_animal.valid?
      render json: new_animal
    else
      render json: new_animal.errors
    end
  end

  def destroy
    animal = Animal.find(params[:id])
    if animal.destroy
      render json: animal
    else
      render json: animal.errors
    end
  end
  private
  def animal_params
    params.require(:animal).permit(:common_name, :latin_name, :kingdom)
  end
end
