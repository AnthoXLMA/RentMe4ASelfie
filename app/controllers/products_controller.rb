class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :new, :create]
  # skip_before_action :authenticate_company!, only: [:home, :index, :new, :create]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @product.save
  end

  def create
    # @company = Company.find(params[:id])
    @product = Product.new(product_params)
    # @product.company = @company
    if @product.save
      redirect_to products_path
    end
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
    params.permit(:name, :category, :price_per_rent)
  end
end
