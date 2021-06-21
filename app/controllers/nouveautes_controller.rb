class NouveautesController < ApplicationController

  def index
    @nouveautes = Nouveaute.all
  end

  def show
    @nouveautes = Nouveaute.find(params[:id])
  end

  def new
    @nouveautes = Nouveaute.new
  end

  def create
    @nouveautes = Nouveaute.new(params[:nouveaute])
    @nouveautes.save
  end

  def destroy
    @nouveautes = Nouveaute.find(params[:id])
    @nouveautes.save
  end

    private

  def nouveaute_params
    params.require(:nouveaute).permit(:citation, :name)
  end

end
