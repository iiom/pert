class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.float :opt_assessment
      t.float :pes_assessment
      t.float :nom_rating
      t.float :exp_duration
      t.float :pos_deviation

      t.timestamps
    end
  end
end
