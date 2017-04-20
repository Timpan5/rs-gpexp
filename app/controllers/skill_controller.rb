class SkillController < ApplicationController
  def load
    if (params.has_key?(:plan_name) && params.has_key?(:skill))
      @existing = (SkillPlan.where(plan_name: params[:plan_name], skill: params[:skill]).first).to_json
    end
    file = File.read('skills.json')
    data = JSON.parse(file)
    skill = data["skills"][params[:name]]
    @options = skill.to_json
    @skillName = params[:name]
    @skillTitle = (params[:name])[0].capitalize + params[:name].slice(1..-1)
    render "layouts/load"
  end
end
