class CreateParentGuardians < ActiveRecord::Migration
  def change
    create_table :parent_guardians do |t|
      t.string :full_name
      t.string :residential_address
      t.float :residential_latitude
      t.float :residential_longitude
      t.string :phone_number
      t.string :cellphone_number
      t.string :email
      t.string :occupation
      t.string :company_name
      t.string :company_address
      t.float :company_latitude
      t.float :company_longitude
      t.string :company_phone

      t.timestamps
    end
  end
end
