class PartyAnimalsController < ApplicationController
  def index
    if params[:location].blank?
      @party_animals = PartyAnimal.all
    else
      @party_animals = PartyAnimal.where("location ILIKE ?", "%#{params[:location]}%")
      # @party_animals = PartyAnimal.where(location: params[:location].capitalize)
    end
  end

  def show
    @party_animal = PartyAnimal.find(params[:id])
  end

  def create
    @party_animal = PartyAnimal.new(party_animal_params)
    @party_animal.user = current_user
    if @party_animal.save!
      redirect_to dashboard_path(current_user)
    else
      # HERE SHOULD BE SOMETHING ELSE -P
      redirect_to dashboard_path(current_user)
    end
  end

  private

  def party_animal_params
    params.require(:party_animal).permit(:image, :location, :availability, :party_name, :available_dates, :photo_cache)
  end
end
