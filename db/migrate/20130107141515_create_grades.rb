class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.string :classroom
      t.string :level
      t.references :group_director

      t.timestamps
    end
    add_index :grades, :group_director_id
  end
end
