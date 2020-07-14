class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @single_building = Building.find(params[:id])
    @offices = @single_building.offices.map do |office|
      {:floor_number => office.floor_number, :company_name => office.company.name}
    end
    @available_floors = @single_building.available_floors
    @companies = Company.all.to_a.map{ |company|
      [company.name,company.id]
    }
  end
end
