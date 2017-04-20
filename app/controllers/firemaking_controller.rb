class FiremakingController < ApplicationController
  def load
    if (params.has_key?(:plan_name) && params.has_key?(:skill))
      @existing = (SkillPlan.where(plan_name: params[:plan_name], skill: params[:skill]).first).to_json
    end
    file = File.read('skills.json')
    data = JSON.parse(file)
    firemaking = data["skills"]["firemaking"]
    @options = firemaking.to_json
    @skillName = 'firemaking';
  end
end
