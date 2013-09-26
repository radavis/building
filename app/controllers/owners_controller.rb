class OwnersController < ApplicationController
  def index
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      flash[:notice] ='New Owner Created'
      redirect_to new_owner_path
    else
      render action: 'new'
    end
  end

  protected
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :company, :email)
  end
end
