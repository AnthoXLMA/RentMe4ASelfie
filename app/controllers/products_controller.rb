class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
  end

  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
  end
end
