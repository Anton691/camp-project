class CountriesController < ApplicationController

  before_action :set_country, only: [:show, :edit, :update, :destroy]
  def index
    @countries = Country.all
  end

  def show
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new country_params
    if @country.save
      redirect_to countries_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @country.update country_params
      redirect_to countries_path
    else
      render :edit
    end
  end

  def destroy
    @country.destroy
    redirect_to countries_path
  end

  private

  def country_params
    params.require(:country).permit(:title)
  end

  def set_country
    @country = Country.find(params[:id])
  end
end
