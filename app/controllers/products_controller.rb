class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.save
  end

  def categories
    @products = Product.all
    @product_category = @products.each do |product|
      product.category
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
  end
end
