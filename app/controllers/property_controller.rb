class PropertyController < ApplicationController
  def new
    @property = Property.new
  end
end
