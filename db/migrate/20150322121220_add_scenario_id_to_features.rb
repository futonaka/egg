class AddScenarioIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :scenario_id, :integer, :after => 'description'
  end
end
