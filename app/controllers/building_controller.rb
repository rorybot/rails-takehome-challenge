class BuildingController < ApplicationController
  def index
    @buildings = Building.all
  end

  def single
    @single_building = Building.find(params[:id])
    @offices = @single_building.offices
    p "foo"
    @mapped = @single_building.offices.map do |office|
      {:floor_number => office.floor_number, :company => office.company.name}
    end


  end
end
