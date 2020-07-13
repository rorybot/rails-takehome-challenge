class Building < ApplicationRecord
  has_many :offices

  def occupied_floors
    self.offices.map do |office|
      office.floor_number
    end
  end

  def available_floors
    [*1..self.number_of_floors]
  end
end
