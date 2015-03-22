class AddStepIdToScenarios < ActiveRecord::Migration
  def change
    add_column :scenarios, :step_id, :integer, :after => 'title'
  end
end
