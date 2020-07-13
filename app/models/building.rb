class Building < ApplicationRecord
  has_many :offices

  def occupied_floors
    self.offices.map do |office|
      office.floor_number
    end
  end

  def available_floors
    all_floors = [*1..self.number_of_floors]
    all_floors.reject {|floor| occupied_floors.include? floor}
  end
end
