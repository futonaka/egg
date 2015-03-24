class AddFeatureIdToScenarios < ActiveRecord::Migration
  def change
    add_column :scenarios, :feature_id, :integer, after: :title
  end
end
