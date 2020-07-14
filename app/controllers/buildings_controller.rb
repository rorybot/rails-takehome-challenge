class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @single_building = Building.find(params[:id])
    @offices = @single_building.offices.map do |office|
      {:floor_number => office.floor_number, :company_name => office.company.name, :company_id => office.company.id}
    end
    @available_floors = @single_building.available_floors
    @companies = Company.all.to_a.map{ |company|
      [company.name,company.id]
    }
  end

  def update
    @building = Building.find(params[:id])
    if @building.update(building_params)
      redirect_to @building
    else
      redirect_to @building
    end
  end

  def create_office
    @office = Office.new(office_params)
    @office.save
    redirect_to Building.find(office_params[:building_id])
  end

  private

  def office_params
    params.require(:office).permit(:floor_number, :company_id, :building_id)
  end

end
