class StorageController < ApplicationController
  def load
    @skill_plans = (SkillPlan.where(plan_name: params[:plan_name]))
    puts @skill_plans.to_json
    render :json => @skill_plans.to_json
  end

  def store
    @skill_plans = SkillPlan.new(:plan_name => params[:plan_name], :skill => params[:skill], :plan => params[:plan])
    @skill_plans.save
  end
end
