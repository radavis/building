class PropertiesController < ApplicationController
  def index
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      flash[:notice] ='New Property Added'
      redirect_to new_property_path
    else
      render action: 'new'
    end
  end

  protected
  def property_params
    params.require(:property).permit(:address, :city, :state, :zip,
      :description, :owner_id)
  end
end
