class PartyAnimalsController < ApplicationController

  def index
    @party_animals = PartyAnimal.all
  end

  def show
    @party_animal = PartyAnimal.find(params[:id])
  end

  def update

  end

  private

  def party_animal_params
    params.require(:party_animal).permit(:image, :category, :location, :availability)
  end
end
