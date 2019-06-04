class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.float :fact_days
      t.references :goal, foreign_key: true
      t.boolean :archived

      t.timestamps
    end
  end
end
