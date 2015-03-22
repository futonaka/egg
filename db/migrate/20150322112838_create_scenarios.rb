class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
