class CompaniesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home, :index, :new, :create]
  # skip_before_action :authenticate_company!, only: [:home, :index, :new, :create]

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new(company_params)
    @company.save
  end

  def create
    @product = Product.new(product_params)
    # @product.company = @company
    if @product.save
      redirect_to products_path
    end
  end

  def destroy
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :address)
  end
end
