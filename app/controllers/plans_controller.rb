class PlansController < ApplicationController

  def index
    set_current_user
    @plans = @user.plans
  end

  def show
    set_current_user
    @plan = @user.plans.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.create(plan_params)
    redirect_to '/'
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :body, :user_ids => [])
  end

end
