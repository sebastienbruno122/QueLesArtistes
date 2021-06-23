class NouveautesController < ApplicationController

  def index
    @nouveautes = Nouveaute.all
  end

  def show
    @nouveaute = Nouveaute.find(params[:id])
  end

  def new
    @nouveaute = Nouveaute.new
  end

  def create
    @nouveaute = Nouveaute.new(params[:nouveaute])
    @nouveaute.save
    redirect_to nouveaute_path(@nouveaute)
  end

  def destroy
    @nouveaute = Nouveaute.find(params[:id])
    @nouveaute.save
  end

    private

  def nouveaute_params
    params.require(:nouveaute).permit(:citation, :name)
  end

end
