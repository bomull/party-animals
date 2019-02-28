class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @party_animal = PartyAnimal.find(params[:party_animal_id])
    @booking = Booking.new
  end

  def create
    # puts "------------"
    # puts params
    # puts "------------"
    params[:booking][:date] = params[:booking][:date].to_datetime
    # puts "------------"
    # puts params
    # puts "------------"
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @party_animal = PartyAnimal.find(params[:party_animal_id])
    @booking.party_animal = @party_animal
    # raise
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
