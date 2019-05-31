class AddColumnsToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :act_duration, :float
    add_column :goals, :deleted, :boolean, default: false
  end
end
