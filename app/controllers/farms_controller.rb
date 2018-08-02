class FarmsController < ApplicationController
  def show
    @farm = Farm.find_by(id: params[:id])
  end
end
