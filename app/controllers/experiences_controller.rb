class ExperiencesController < ApplicationController
skip_before_action :authenticate_user!

  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
    @products = Product.all
    @experience_products = @products.where(experience_id: params[:id])
  end

  def new
    @experience = Experience.new
    @experience.save
  end

  def create
    @experience = Experience.find(params[:id])
    @experience = Experience.new(experience_params)
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:name)
  end
end
