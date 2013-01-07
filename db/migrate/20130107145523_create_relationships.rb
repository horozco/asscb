class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :name
      t.references :student
      t.references :parent_guardian

      t.timestamps
    end
    add_index :relationships, :student_id
    add_index :relationships, :parent_guardian_id
  end
end
