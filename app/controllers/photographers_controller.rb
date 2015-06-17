class PhotographersController < ApplicationController
  before_action :set_photographer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  respond_to :html

  def index
    @photographers = Photographer.all
    respond_with(@photographers)
  end

  def show
    respond_with(@photographer)
  end

  def new
    @photographer = Photographer.new
    respond_with(@photographer)
  end

  def edit
  end

  def create
    @photographer = Photographer.new(photographer_params)
    @photographer.save
    respond_with(@photographer)
  end

  def update
    @photographer.update(photographer_params)
    respond_with(@photographer)
  end

  def destroy
    @photographer.destroy
    respond_with(@photographer)
  end

  private
    def set_photographer
      @photographer = Photographer.find(params[:id])
    end

    def photographer_params
      params.require(:photographer).permit(:name, :email, :phonenumber)
    end
end
