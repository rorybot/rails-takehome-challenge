class BuildingController < ApplicationController
  def index
    @buildings = Building.all
  end

  def single
    p "bob"
    p params[:id]
    @single_building = Building.find(params[:id])
    @offices = @single_building.occupied_floors
  end
end
