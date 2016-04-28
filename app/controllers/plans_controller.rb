class PlansController < ApplicationController

  def index
    set_current_user
    @plans = @user.plans
  end

  def show
    set_current_user
    @plan = Plan.find(params[:id])
    authorize @user
  end

  def new
    @plan = Plan.new
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def update
    @plan = Plan.find(params[:id])
    @plan.update(plan_params)
    redirect_to '/'
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :body, :user_ids => [])
  end

end
