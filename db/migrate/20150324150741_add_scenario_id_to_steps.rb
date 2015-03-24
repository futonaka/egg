class AddScenarioIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :scenario_id, :integer, after: :content
  end
end
