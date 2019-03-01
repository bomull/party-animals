class DashboardController < ApplicationController

  def show

    @bookings = Booking.where(user_id: current_user.id)
    @party_animal = PartyAnimal.new
    @invitations = Booking.where(party_animal_id: current_user.party_animal)
  end


end
