class PickupDaysController < ApplicationController
  def index
    @pickup_days = current_organization.pickup_days.all
  end

  def new
    @pickup_day = current_organization.pickup_days.new
  end

  def edit
    @pickup_day = current_organization.pickup_days.find(params[:id])
  end

  def create
    @pickup_day = current_organization.pickup_days.new(pickup_day_params)

    if @pickup_day.save
      redirect_to pickup_days_path
    else
      render 'new'
    end
  end

  def update
    @pickup_day = current_organization.pickup_days.find(params[:id])

    if @pickup_day.update(pickup_day_params)
      redirect_to pickup_days_path
    else
      render 'edit'
    end
  end

  def destroy
    @pickup_day = current_organization.pickup_days.find(params[:id])
    @pickup_day.destroy

    redirect_to pickup_days_path
  end

  private

  def pickup_day_params
    params.require(:pickup_day).permit(:scheduled_for, :organization_id, :starts_at, :ends_at)
  end
end
