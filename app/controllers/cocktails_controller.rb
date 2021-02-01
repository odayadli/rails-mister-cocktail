class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i[show edit update destroy]
  def home; end

  def index
    @cocktails = Cocktail.search(params[:search])

    if params[:query].present?
      @query = params[:query]
      @cocktails = Cocktail.where("name LIKE ?","%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @cocktails = Cocktail.all
    end
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
    params.require(:cocktail).permit(:name, :photo, :search)
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
