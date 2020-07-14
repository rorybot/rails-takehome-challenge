class CompanyController < ApplicationController
  def single
    @single_company = Company.find(params[:id])
    @offices = @single_company.offices.map do |office|
      [[office.building_id,office.building.name], office.floor_number]
    end
    @offices = @offices.group_by(&:first).map{ |key, value|
      {:building_id => key[0], :building_name => key[1], :floors => [*value.map(&:last)]}
    }


        p @offices
        p "foo"



        # @offices = @single_company.offices.each do |office|
        #   building_floors[:building_name] = office.building.name
        # end
        # @offices = building_floors


  end

end
