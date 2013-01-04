class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  :first_name
      t.string  :second_name
      t.string  :type_id
      t.string  :number_id
      t.datetime  :birthdate
      t.string  :email
      t.string  :phone_number
      t.string  :cellphone_number
      t.string  :address
      t.float :latitude
      t.float :longitude
      t.string  :house_members
      t.integer :number_of_brothers
      t.integer :age_position
      t.string  :timestamps
      t.text  :observations
    end
  end
end



