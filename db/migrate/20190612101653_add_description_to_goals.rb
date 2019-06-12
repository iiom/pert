class AddDescriptionToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :description, :text
  end
end
