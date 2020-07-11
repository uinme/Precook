# frozen_string_literal: true

class WeeklyPlansController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def index
    @weekly_plans = WeeklyPlan.all
  end

  def show
    @weekly_plan = WeeklyPlan.find_by(id: params[:id])
  end

  def new
    user = User.find(current_user.id)
    @weekly_plan = user.weekly_plans.build
    7.times { @weekly_plan.plans.build }
  end

  def create
    @weekly_plan = WeeklyPlan.new(weekly_plan_params)
    @weekly_plan.user_id = current_user.id
    @weekly_plan.save
    redirect_to weekly_plans_path
  end

  private

  def weekly_plan_params
    params.require(:weekly_plan).permit(:name, plans_attributes: %i[id recipe_id])
  end
end
