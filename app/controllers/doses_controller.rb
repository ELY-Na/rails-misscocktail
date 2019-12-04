class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.find(params[:id])
    @dose.cocktail = @dose
    @dose.save
  end
  def show
  end
end
