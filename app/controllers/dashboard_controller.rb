class DashboardController < ApplicationController

  def show
    @bookings = Booking.where(user_id: current_user.id)
    # @user = current_user
    # @dashboard = User.find(params[:id])
    # @bookings = @user.bookings
    # @upcoming_bookings = @bookings.where("date > '#{Date.current}'")
    # @past_bookings = @bookings.where(" date < '#{Date.current}'")
  end
end
