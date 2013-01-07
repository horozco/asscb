class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      #Basic Information
      t.string :first_name
      t.string :second_name
      t.string :type_id
      t.string :number_id
      t.datetime :birthdate
      t.string :birthplace
      t.string :email
      t.string :phone_number
      t.string :cellphone_number
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :grade
      #Family Information
      t.string :house_members
      t.integer :number_of_brothers
      t.integer :age_position
      #Medical Information
      t.string :type_of_health
      t.string :name_health
      t.string :physical_problems
      t.string :allergies
      t.string :medicines
      #Others
      t.attachment :photo
      t.text :observations

      t.timestamps
    end
    add_index :students, :grade_id
  end
end
