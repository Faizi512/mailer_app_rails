class CtypesController < ApplicationController
  before_action :set_ctype, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ctypes = Ctype.all
    respond_with(@ctypes)
  end

  def show
    respond_with(@ctype)
  end

  def new
    @ctype = Ctype.new
    respond_with(@ctype)
  end

  def edit
  end

  def create
    @ctype = Ctype.new(ctype_params)
    @ctype.save
    respond_with(@ctype)
  end

  def update
    @ctype.update(ctype_params)
    respond_with(@ctype)
  end

  def destroy
    @ctype.destroy
    respond_with(@ctype)
  end

  private
    def set_ctype
      @ctype = Ctype.find(params[:id])
    end

    def ctype_params
      params.require(:ctype).permit(:name)
    end
end
