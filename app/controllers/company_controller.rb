class CompanyController < ApplicationController
  def single
    @single_company = Company.find(params[:id])
    @offices = @single_company.offices.map do |office|
      {:building_id => office.building.id, :building_name => office.building.name, :floor_number => office.floor_number}
    end
  end

end
