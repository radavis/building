class PropertiesController < ApplicationController
  def index
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    flash[:notice] ='New Property Added' if @property.save
    redirect_to new_property_path
  end

  protected
  def property_params
    params.require(:property).permit(:address, :city, :state, :zip, :description)
  end
end
