class ModelsController < ApplicationController
  before_action :set_model, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]
  respond_to :html

  def index
    @models = Model.all
    respond_with(@models)
  end

  def show
    @model = Model.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
      render pdf: "NTP-#{@model.firstname}-cutsheet"
      end
    end
  end

  def new
    @model = Model.new
    respond_with(@model)
  end

  def edit
  end

  def create
    @model = Model.new(model_params)
    @model.save
    respond_with(@model)
  end

  def update
    @model.update(model_params)
    respond_with(@model)
  end

  def destroy
    @model.destroy
    respond_with(@model)
  end

  private
    def set_model
      @model = Model.find(params[:id])
    end

    def model_params
      params.require(:model).permit(:firstname, :lastname, :heightfeet, :heightinches, :size, :shoesize, :haircolor, :eyes, :bust, :waist, :hips, :phonenumber, :city, :age, :avatar)
    end
end
