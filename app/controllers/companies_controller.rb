class CompaniesController < ApplicationController
  def show
    @single_company = Company.find(params[:id])
    @offices = @single_company.offices.map do |office|
      [[office.building_id,office.building.name], office.floor_number]
    end
    @offices = @offices.group_by(&:first).map{ |key, value|
      {:building_id => key[0], :building_name => key[1], :floors => [*value.map(&:last)]}
    }
  end

  def new

  end

  def create
    @company = Company.new(company_params)
    @company.save
    redirect_to @company
  end

  private

  def company_params
    params.require(:company).permit(:name)
  end

end
