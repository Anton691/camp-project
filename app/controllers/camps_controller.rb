class CampsController < ApplicationController

  before_action :set_camp, only: [:show, :edit, :update, :destroy]

  def index
    @camps = Camp.all
  end

  def show
  end

  def new
    @camp = Camp.new
  end

  def create
    @camp = Camp.new camp_params
    if @camp.save
      redirect_to camps_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @camp.update camp_params
      redirect_to camps_path
    else
      render :edit
    end
  end

  def destroy
    @camp.destroy
    redirect_to camps_path
  end

  private

  def camp_params
    params.require(:camp).permit(:title, :description)
  end

  def set_camp
    @camp = Camp.find(params[:id])
  end
end
