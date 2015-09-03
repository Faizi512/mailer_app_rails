class PstatsController < ApplicationController
  before_action :set_pstat, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pstats = Pstat.all
    respond_with(@pstats)
  end

  def show
    respond_with(@pstat)
  end

  def new
    @pstat = Pstat.new
    respond_with(@pstat)
  end

  def edit
  end

  def create
    @pstat = Pstat.new(pstat_params)
    @pstat.save
    respond_with(@pstat)
  end

  def update
    @pstat.update(pstat_params)
    respond_with(@pstat)
  end

  def destroy
    @pstat.destroy
    respond_with(@pstat)
  end

  private
    def set_pstat
      @pstat = Pstat.find(params[:id])
    end

    def pstat_params
      params.require(:pstat).permit(:name, :project_id)
    end
end
