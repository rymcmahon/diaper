class PickupDaysController < ApplicationController
  def index
    @pickup_days = current_organization.pickup_days.all
  end

  def new
    @pickup_day = current_organization.pickup_days.new
  end

  def create
    @pickup_day = current_organization.pickup_days.new(pickup_day_params)

    if @pickup_day.save
      redirect_to pickup_days_path
    else
      render 'new'
    end
  end

  def edit
    @pickup_day = current_organization.pickup_days.find(params[:id])
  end

  def update

  end

  def delete

  end

  private

  def pickup_day_params
    params.require(:pickup_day).permit(:scheduled_for, :organization_id, :starts_at, :ends_at)
  end
end
