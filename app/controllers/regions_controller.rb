class RegionsController < ApplicationController

  before_action :set_region, only: [:show, :edit, :update, :destroy]
  def index
    @regions = Region.all
  end

  def show
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new region_params
    if @region.save
      redirect_to regions_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @region.update region_params
      redirect_to regions_path
    else
      render :edit
    end
  end

  def destroy
    @region.destroy
    redirect_to regions_path
  end

  private

  def region_params
    params.require(:region).permit(:title)
  end

  def set_region
    @region = Region.find(params[:id])
  end
end
