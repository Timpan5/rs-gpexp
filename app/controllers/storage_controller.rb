class StorageController < ApplicationController
  def load
  end

  def store
    @skill_plans = SkillPlan.new(:plan_name => params[:plan_name], :skill => params[:skill], :plan => params[:plan])
    @skill_plans.save
  end
end
