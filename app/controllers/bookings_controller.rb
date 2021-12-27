class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    # @user     = current_user
    @booking  = Booking.new
    @booking.save
  end

  def create
    @user     = current_user
    @product  = Product.find_by(id: params[:product_id])
    @booking  = Booking.new(booking_params)
    @booking.user = current_user
    flash.alert = "Votre réservation est confirmée"
    if @booking.save
      redirect_to product_path(@product.id)
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.permit(:user_id, :product_id, :starts_at, :ends_at)
  end
end
