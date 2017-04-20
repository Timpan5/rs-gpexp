class StorageController < ApplicationController
  def load
    if (params.has_key?(:plan_name))
      @skill_plans = SkillPlan.where(plan_name: params[:plan_name])
      render :json => @skill_plans.to_json
    else
      puts 'invalid'
    end
  end

  def store
    @skill_plans = SkillPlan.where(plan_name: params[:plan_name], skill: params[:skill])
    if (@skill_plans.exists?)
      @skill_plans.update(plan: params[:plan])
    else
      @skill_plans = SkillPlan.new(:plan_name => params[:plan_name], :skill => params[:skill], :plan => params[:plan])
      @skill_plans.save
    end
  end
end
