class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i[show edit update destroy healthy_coktail]

  def home
    @cocktails = Cocktail.last(3)
  end

  def healthy_cocktails
    @cocktails = Cocktail.where(category: 'Non-Alcohol')
  end

  def index
    @cocktails = Cocktail.where(category: 'Alcohol')
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit; end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktails_path
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :category, :description, :photo, :creator, :search)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
