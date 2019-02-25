class PartyAnimalsController < ApplicationController

  def index
    @party_animals = Party_Animal.all
  end

  def show
    @party_animal = Party_Animal.find(params[:id])
  end

  def update

  end

  private

  def party_animal_params
    params.require(:party_animal).permit(:image, :category, :location, :availability)
  end
end
