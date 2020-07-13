class BuildingController < ApplicationController
  def index
    @buildings = Building.all
  end
end
