class PartyAnimalsController < ApplicationController
  def index
    if params[:location].blank?
      @party_animals = PartyAnimal.all
    else
      @party_animals = PartyAnimal.where(location: params[:location].capitalize)
    end
  end

  def show
    @party_animal = PartyAnimal.find(params[:id])
  end

  def new
    @party_animal = PartyAnimal.new
  end

  private

  def party_animal_params
    params.require(:party_animal).permit(:image, :category, :location, :availability)
  end
end
