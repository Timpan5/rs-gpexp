class CreateSkillPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_plans, id: false do |t|
      t.text :plan_name
      t.text :skill
      t.jsonb :plan
    end

    execute "ALTER TABLE skill_plans ADD PRIMARY KEY (plan_name, skill);"
  end
end
