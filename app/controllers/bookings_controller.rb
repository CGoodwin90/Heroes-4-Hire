class BookingsController < ApplicationController
  before_action :set_superhero, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.superhero = @superhero
    @booking.user = current_user
    # assign value to total_price attribute
    @booking.calculate_price!
    # assign value to total_price attribute
    @booking.number_of_nights = @booking.days_of_rent
    if @booking.save
      flash[:pop_alert] = "Your booking for #{@superhero.name} has been confirmed!"
      redirect_to superheroes_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_range)
  end

  def set_superhero
    @superhero = Superhero.find(params[:superhero_id])
  end
end