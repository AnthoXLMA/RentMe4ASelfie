class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # skip_before_action :authenticate_company!, only: [:home]
  def home
  end

  def contact
    @contacts = ["Anthony", "Venance", "Anne-Marie", "Elise"]
  end
end
